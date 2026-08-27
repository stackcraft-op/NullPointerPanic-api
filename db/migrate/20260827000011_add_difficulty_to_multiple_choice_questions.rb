# frozen_string_literal: true

class AddDifficultyToMultipleChoiceQuestions < ActiveRecord::Migration[8.1]
  def change
    add_column :multiple_choice_questions, :difficulty, :integer
  end
end
