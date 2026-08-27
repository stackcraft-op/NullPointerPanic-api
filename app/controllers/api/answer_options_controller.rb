# frozen_string_literal: true

module Api
  class AnswerOptionsController < ApplicationController
    # POST /api/answer_options/:id/submit
    # Prueft eine gewaehlte Antwortoption, trackt den Versuch und vergibt
    # Currency/XP nach den vereinbarten Regeln.
    def submit
      selected_option = AnswerOption.find_by(id: params[:id])

      # Ungueltige/nicht existente ID -> sofort abbrechen, 404
      unless selected_option
        return render json: { error: "Antwortoption nicht gefunden" }, status: :not_found
      end

      question = selected_option.multiple_choice_question

      # Regel: Jede Tagesfrage darf pro Tag nur EINMAL beantwortet werden.
      # Pruefung MUSS vor dem Anlegen des neuen ProgressEntry passieren,
      # sonst wuerde der gerade angelegte Eintrag sich selbst mitzaehlen.
      already_answered_today = ProgressEntry.exists?(
        user: @current_user,
        multiple_choice_question: question,
        answered_at: Date.current.all_day
      )

      if already_answered_today
        return render json: { error: "Frage wurde heute bereits beantwortet" }, status: :unprocessable_entity
      end

      correct = selected_option.correct

      # Regel: Currency gibt's nur beim ALLERERSTEN richtigen Versuch,
      # unabhaengig davon, an welchem Tag das war. Deshalb KEIN Datums-Filter
      # hier (anders als bei already_answered_today oben).
      # Auch diese Pruefung muss vor dem create! passieren, aus demselben Grund.
      already_correct = ProgressEntry.exists?(
        user: @current_user, multiple_choice_question: question, correct: true
      )

      # Der eigentliche Tracking-Eintrag: haelt jeden Versuch fest,
      # unabhaengig davon ob richtig oder falsch. Basis fuer Fortschritt
      # und spaeteres Ranking.
      ProgressEntry.create!(
        user: @current_user,
        multiple_choice_question: question,
        correct: correct,
        answered_at: Time.current
      )

      # Currency nur vergeben: aktuell richtig UND noch nie vorher richtig
      if correct && !already_correct
        @current_user.profile.increment!(:currency, Profile::CURRENCY_PER_CORRECT_ANSWER)
      end

      # Prueft separat, ob durch DIESE Antwort alle 20 Tagesfragen komplett
      # sind, und vergibt dann ggf. den XP-Tagesbonus (siehe Methode unten)
      award_daily_xp_bonus_if_complete

      # Antwort an das Frontend: bei falscher Antwort wird zusaetzlich die
      # richtige Option mitgeschickt (Lernfeedback laut API-Vertrag)
      if correct
        render json: { correct: true }
      else
        correct_option = question.answer_options.find_by(correct: true)
        render json: {
          correct: false,
          correct_option: { id: correct_option.id, text: correct_option.text }
        }
      end
    end

    private

    # Vergibt einmalig pro Tag XP, sobald der User alle 20 Tagesfragen
    # beantwortet hat. XP-Menge haengt von der Anzahl RICHTIGER Antworten ab.
    def award_daily_xp_bonus_if_complete
      profile = @current_user.profile

      # Waechter: schon heute vergeben? -> nichts mehr tun
      return if profile.daily_xp_awarded_on == Date.current

      # Die 20 MC-Fragen-IDs, die heute offiziell "dazugehoeren"
      # (dieselbe Auswahl wie bei GET /api/flashcards/daily)
      daily_ids = Flashcard.daily_question_ids

      # Wie viele der heutigen 20 wurden ueberhaupt schon beantwortet
      # (richtig ODER falsch)?
      answered_today = ProgressEntry
                         .where(user: @current_user, multiple_choice_question_id: daily_ids, answered_at: Date.current.all_day)
                         .distinct
                         .pluck(:multiple_choice_question_id)

      # Noch nicht alle 20 durch -> abbrechen, Bonus erst bei Vollstaendigkeit
      return unless answered_today.size >= daily_ids.size

      # Alle 20 sind durch: jetzt zaehlen, wie viele davon RICHTIG waren
      correct_today = ProgressEntry
                        .where(user: @current_user, multiple_choice_question_id: daily_ids, answered_at: Date.current.all_day, correct: true)
                        .distinct
                        .pluck(:multiple_choice_question_id)

      # XP = Anzahl richtiger Antworten * Punkte pro richtiger Antwort
      profile.increment(:experience, correct_today.size * Profile::XP_PER_CORRECT_ANSWER)

      # Waechter fuer heute setzen, damit der Bonus nicht nochmal greift
      profile.daily_xp_awarded_on = Date.current

      # Beide Aenderungen (XP-Erhoehung + Waechter-Datum) gemeinsam speichern
      profile.save!
    end
  end
end
