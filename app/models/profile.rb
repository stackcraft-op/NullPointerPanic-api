# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user

  CURRENCY_PER_CORRECT_ANSWER = 1
  XP_PER_CORRECT_ANSWER = 10
end
