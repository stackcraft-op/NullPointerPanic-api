# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_one :profile, dependent: :destroy
  has_many :progress_entries, dependent: :destroy
  has_many :checked_flashcards, dependent: :destroy
  has_many :owned_shop_items, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 8, message: "muss mindestens 8 Zeichen lang sein" }, if: -> { new_record? || !password.nil? }

  def set_streak!
    today = Date.current
    if last_active_on == today
      # bereits heute aktiv, keine Aktion notwendig
    elsif last_active_on == today - 1
      self.current_streak += 1
    else
      self.current_streak = 1
    end
    self.longest_streak = [ current_streak, longest_streak ].max
    self.last_active_on = today
    save

    if current_streak.positive? && (current_streak % 7).zero?
      profile.increment!(:currency, 10)
    end
  end
end
