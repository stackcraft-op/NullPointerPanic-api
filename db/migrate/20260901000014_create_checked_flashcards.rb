# frozen_string_literal: true

class CreateCheckedFlashcards < ActiveRecord::Migration[8.1]
  def change
    create_table :checked_flashcards do |t|
      t.references :user, foreign_key: true
      t.references :flashcard, foreign_key: true
      t.timestamps
    end
    add_index :checked_flashcards, [ :user_id, :flashcard_id ], unique: true
  end
end
