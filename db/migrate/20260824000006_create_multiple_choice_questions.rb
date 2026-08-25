# frozen_string_literal: true

class CreateMultipleChoiceQuestions < ActiveRecord::Migration[8.1]
  def change
    create_table :multiple_choice_questions do |t|
      t.references :flashcard, foreign_key: true, index: { unique: true }
      t.text :question_text
      t.timestamps
    end
  end
end
