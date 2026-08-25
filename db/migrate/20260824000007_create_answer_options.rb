# frozen_string_literal: true

class CreateAnswerOptions < ActiveRecord::Migration[8.1]
  def change
    create_table :answer_options do |t|
      t.references :multiple_choice_question, foreign_key: true
      t.text :text
      t.boolean :correct, default: false
      t.timestamps
    end
  end
end
