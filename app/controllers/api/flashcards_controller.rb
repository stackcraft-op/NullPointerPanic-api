# frozen_string_literal: true

module Api
  class FlashcardsController < ApplicationController
    def index
      flashcards = Flashcard.includes(:topic)

      render json: flashcards.map { |card| wiki_json(card) }
    end
    def daily
      flashcards = Flashcard.daily_selection.includes(:topic, multiple_choice_question: :answer_options)
      render json: flashcards.map { |card| flashcard_json(card) }
    end
    private

    def wiki_json(card)
      {
        id: card.id,
        question: card.question,
        answer: card.answer,
        exam_type: card.exam_type,
        topic: { id: card.topic.id, name: card.topic.name }
      }
    end

    def flashcard_json(card)
      mc = card.multiple_choice_question
      {
        id: card.id,
        question: card.question,
        answer: card.answer,
        exam_type: card.exam_type,
        topic: { id: card.topic.id, name: card.topic.name },
        multiple_choice_question: {
          id: mc.id,
          question_text: mc.question_text,
          difficulty: mc.difficulty,
          answer_options: mc.answer_options.map { |o| { id: o.id, text: o.text } }
        }
      }
    end
  end
end
