# frozen_string_literal: true

class Flashcard < ApplicationRecord
  belongs_to :topic
  has_one :multiple_choice_question, dependent: :destroy
  has_many :checked_flashcards, dependent: :destroy
  enum :exam_type, { ap1: 0, ap2_fisi: 1, ap2_fiae: 2 }
  validates :question, presence: true
  validates :answer, presence: true

  def self.daily_selection
    seed = ActiveRecord::Base.connection.quote(Date.current.to_s)
    joins(:multiple_choice_question)
      .order(Arel.sql("md5(flashcards.id::text || #{seed})"))
      .limit(20)
  end

  def self.daily_question_ids
    daily_selection.pluck("multiple_choice_questions.id")
  end
end
