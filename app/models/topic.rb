# frozen_string_literal: true

class Topic < ApplicationRecord
  has_many :flashcards, dependent: :destroy

  def progress_for(user)
    total = flashcards.count
    return 0 if total.zero?
    # Array mit question_ids
    question_ids = flashcards.joins(:multiple_choice_question).pluck("multiple_choice_questions.id")
    return 0 if question_ids.empty?
    # Array mit den letzten Eintraegen
    latest_entries = ProgressEntry
                       .select("DISTINCT ON (multiple_choice_question_id) *")
                       .where(user_id: user.id, multiple_choice_question_id: question_ids)
                       .order(:multiple_choice_question_id, answered_at: :desc)

    learned = latest_entries.count(&:correct)

    (learned.to_f / total * 100).round
  end
end
