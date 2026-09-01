# frozen_string_literal: true

class ProgressEntry < ApplicationRecord
  belongs_to :user
  belongs_to :multiple_choice_question

  enum :source, { daily: 0, quiz: 1 }
end
