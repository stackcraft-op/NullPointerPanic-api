# frozen_string_literal: true

module Api
  class AnswerOptionsController < ApplicationController
    def submit
      selected_option = AnswerOption.find_by(id: params[:id])

      unless selected_option
        return render json: { error: "Antwortoption nicht gefunden" }, status: :not_found
      end

      question = selected_option.multiple_choice_question
      correct = selected_option.correct

      ProgressEntry.create!(
        user: @current_user,
        multiple_choice_question: question,
        correct: correct,
        answered_at: Time.current
      )

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
  end
end
