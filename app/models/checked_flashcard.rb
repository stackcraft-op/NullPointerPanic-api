# frozen_string_literal: true

class CheckedFlashcard < ApplicationRecord
  belongs_to :user
  belongs_to :flashcard
end
