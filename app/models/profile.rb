# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :active_avatar_item, class_name: "ShopItem", optional: true
  belongs_to :active_frame_item, class_name: "ShopItem", optional: true

  before_save :censor_status_text

  validates :specialization, presence: { message: "Fachbereich darf nicht leer sein" }, inclusion: { in: GameConfig::SPECIALIZATIONS, message: "Ungueltiger Fachbereich" }
  validates :state, presence: { message: "Bundesland darf nicht leer sein" }, inclusion: { in: GameConfig::STATES, message: "Ungueltiges Bundesland" }

  private

  def censor_status_text
    return if status_text.blank?

    GameConfig::BLOCKED_WORDS.each do |word|
      pattern = word.chars.map { |char| Regexp.escape(char) }.join('\s*')
      self.status_text = status_text.gsub(/#{pattern}/i, "*" * word.length)
    end
  end
end
