# frozen_string_literal: true

class CreateProgressEntries < ActiveRecord::Migration[8.1]
  def change
    create_table :progress_entries do |t|
      t.references :user, foreign_key: true
      t.references :multiple_choice_question, foreign_key: true
      t.boolean :correct
      t.datetime :answered_at
      t.timestamps
    end
  end
end
