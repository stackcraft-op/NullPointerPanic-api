# frozen_string_literal: true

class MultipleChoiceQuestion < ApplicationRecord
  belongs_to :flashcard
  has_many :answer_options, dependent: :destroy
  has_many :progress_entries, dependent: :destroy
  enum :difficulty, { leicht: 0, schwer: 1 }

  validate :exactly_one_correct_option

  private

    def exactly_one_correct_option
      return if answer_options.select(&:correct).count == 1
      errors.add(:base, "Es muss genau eine richtige Antwort geben")
    end
end
