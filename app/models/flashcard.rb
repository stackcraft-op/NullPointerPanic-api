# frozen_string_literal: true

class Flashcard < ApplicationRecord
  belongs_to :topic
  has_one :multiple_choice_question, dependent: :destroy
  enum :exam_type, { ap1: 0, ap2_fisi: 1, ap2_fiae: 2 }
  validates :question, presence: true
  validate :answer, presence: true
end
