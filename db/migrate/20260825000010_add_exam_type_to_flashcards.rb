class AddExamTypeToFlashcards < ActiveRecord::Migration[8.1]
  def change
    add_column :flashcards, :exam_type, :integer
  end
end
