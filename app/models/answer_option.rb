# frozen_string_literal: true

class AnswerOption < ApplicationRecord
  belongs_to :multiple_choice_question
  validates :text, presence: true
end
