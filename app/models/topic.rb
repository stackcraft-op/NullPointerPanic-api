# frozen_string_literal: true

class Topic < ApplicationRecord
  has_many :flashcards, dependent: :destroy
end
