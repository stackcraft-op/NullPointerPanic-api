# frozen_string_literal: true

module Api
  class FlashcardChecksController < ApplicationController
    def create
      flashcard = Flashcard.find_by(id: params[:flashcard_id])
      return render json: { error: "Karte nicht gefunden" }, status: :not_found unless flashcard

      existing = CheckedFlashcard.find_by(user: @current_user, flashcard: flashcard)

      if existing
        existing.destroy
        render json: { checked: false }
      else
        CheckedFlashcard.create!(user: @current_user, flashcard: flashcard)
        render json: { checked: true }
      end
    end
  end
end
