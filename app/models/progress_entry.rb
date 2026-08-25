# frozen_string_literal: true

class ProgressEntry < ApplicationRecord
  belongs_to :user
  belongs_to :multiple_choice_question
end
