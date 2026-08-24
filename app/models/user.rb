# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_one :profile, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

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
  end
end
