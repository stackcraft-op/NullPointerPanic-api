# frozen_string_literal: true

module Api
  class TopicsController < ApplicationController
    def progress
      topics = Topic.all.map do |topic|
        {
          id: topic.id,
          name: topic.name,
          progress_percent: topic.progress_for(@current_user)
        }
      end

      render json: topics
    end
    def flashcards
      topic = Topic.find(params[:id])
      checked_ids = @current_user.checked_flashcards.pluck(:flashcard_id)

      cards = topic.flashcards.map do |card|
        {
          id: card.id,
          question: card.question,
          answer: card.answer,
          checked: checked_ids.include?(card.id)
        }
      end

      render json: cards
    end
  end
end
