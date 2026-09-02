module Api
  class AnswerOptionsController < ApplicationController
    # Laedt die Antwortoption + Frage VOR jeder Action, damit beide
    # (submit und quiz_submit) nicht denselben Lade-Code wiederholen muessen
    before_action :set_selected_option

    # POST /api/answer_options/:id/submit - fuer die Tageskarten
    def submit
      # Tageslimit: dieselbe Frage darf pro Tag nur einmal ueber DIESEN
      # Endpunkt beantwortet werden (Quiz-Antworten zaehlen hier NICHT mit,
      # dank source: :daily)
      already_answered_today = ProgressEntry.exists?(
        user: @current_user,
        multiple_choice_question: @question,
        answered_at: Date.current.all_day,
        source: :daily
      )

      if already_answered_today
        return render json: { error: "Frage wurde heute bereits beantwortet" }, status: :unprocessable_entity
      end

      # Muss VOR record_progress geprueft werden, sonst wuerde der gerade
      # erst angelegte Eintrag sich selbst mitzaehlen
      already_correct = ProgressEntry.exists?(
        user: @current_user, multiple_choice_question: @question, correct: true
      )

      record_progress(source: :daily)

      # Currency nur beim ALLERERSTEN richtigen Versuch einer Frage (Anti-Farming)
      if @correct && !already_correct
        @current_user.profile.increment!(:currency, Profile::CURRENCY_PER_CORRECT_ANSWER)
      end

      award_daily_xp_bonus_if_complete
      render_result
    end

    # POST /api/answer_options/:id/quiz_submit - fuer das selbstgesteuerte Lernen
    # Bewusst KEIN Tageslimit, KEINE Currency - andere Regeln als bei submit
    def quiz_submit
      record_progress(source: :quiz)

      if @correct
        @current_user.profile.increment!(:experience, Profile::XP_PER_QUIZ_ANSWER)
      else
        # Falsche Antwort im Quiz -> Karte rutscht zurueck in den Lern-Stapel
        CheckedFlashcard.find_by(user: @current_user, flashcard: @question.flashcard)&.destroy
      end

      render_result
    end

    private

    # Gemeinsames Laden fuer beide Actions oben
    def set_selected_option
      @selected_option = AnswerOption.find_by(id: params[:id])
      return render json: { error: "Antwortoption nicht gefunden" }, status: :not_found unless @selected_option

      @question = @selected_option.multiple_choice_question
      @correct = @selected_option.correct
    end

    # source unterscheidet daily/quiz-Antworten, damit z.B. das Wochen-Ranking
    # nur echte Tagesantworten zaehlt (siehe RankingsController#weekly)
    def record_progress(source:)
      ProgressEntry.create!(
        user: @current_user,
        multiple_choice_question: @question,
        correct: @correct,
        answered_at: Time.current,
        source: source
      )
    end

    # Gemeinsame Response-Logik fuer beide Actions: bei falscher Antwort
    # kommt zusaetzlich die richtige Option UND die komplette Flashcard mit
    # (fuer die ausfuehrliche Erklaerung im Frontend, nicht nur die kurze MC-Antwort)
    def render_result
      if @correct
        render json: { correct: true }
      else
        correct_option = @question.answer_options.find_by(correct: true)
        render json: {
          correct: false,
          correct_option: { id: correct_option.id, text: correct_option.text },
          flashcard: flashcard_json(@question.flashcard)
        }
      end
    end

    def flashcard_json(flashcard)
      {
        id: flashcard.id,
        question: flashcard.question,
        answer: flashcard.answer,
        exam_type: flashcard.exam_type,
        topic: { id: flashcard.topic.id, name: flashcard.topic.name }
      }
    end

    # Vergibt einmalig pro Tag XP, sobald alle 20 Tageskarten beantwortet sind
    def award_daily_xp_bonus_if_complete
      profile = @current_user.profile
      return if profile.daily_xp_awarded_on == Date.current

      daily_ids = Flashcard.daily_question_ids

      answered_today = ProgressEntry
                         .where(user: @current_user, multiple_choice_question_id: daily_ids, answered_at: Date.current.all_day, source: :daily)
                         .distinct
                         .pluck(:multiple_choice_question_id)

      return unless answered_today.size >= daily_ids.size

      correct_today = ProgressEntry
                        .where(user: @current_user, multiple_choice_question_id: daily_ids, answered_at: Date.current.all_day, correct: true, source: :daily)
                        .distinct
                        .pluck(:multiple_choice_question_id)

      profile.increment(:experience, correct_today.size * Profile::XP_PER_CORRECT_ANSWER)
      profile.daily_xp_awarded_on = Date.current
      profile.save!
    end
  end
end
