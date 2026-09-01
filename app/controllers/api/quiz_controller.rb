# frozen_string_literal: true

module Api
  class QuizController < ApplicationController
    MIN_CHECKED_CARDS = 20
    QUIZ_SIZE = 20

    def create
      topic = Topic.find(params[:topic_id])

      eligible = topic.flashcards
                      .joins(:checked_flashcards, :multiple_choice_question)
                      .where(checked_flashcards: { user_id: @current_user.id })

      if eligible.count < MIN_CHECKED_CARDS
        return render json: { error: "Mindestens #{MIN_CHECKED_CARDS} abgehakte Karten in diesem Thema noetig" }, status: :unprocessable_entity
      end

      selected = eligible.to_a.sample(QUIZ_SIZE)

      render json: selected.map { |card| quiz_card_json(card) }
    end

    private

    def quiz_card_json(card)
      mc = card.multiple_choice_question
      {
        id: card.id,
        question: card.question,
        multiple_choice_question: {
          id: mc.id,
          question_text: mc.question_text,
          answer_options: mc.answer_options.map { |o| { id: o.id, text: o.text } }
        }
      }
    end
  end
end
