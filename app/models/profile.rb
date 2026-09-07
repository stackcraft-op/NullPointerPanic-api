# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :active_avatar_item, class_name: "ShopItem", optional: true
  belongs_to :active_frame_item, class_name: "ShopItem", optional: true

  SPECIALIZATIONS = %w[FIAE FISI].freeze
  STATES = [
    "Baden-Württemberg", "Bayern", "Berlin", "Brandenburg", "Bremen",
    "Hamburg", "Hessen", "Mecklenburg-Vorpommern", "Niedersachsen",
    "Nordrhein-Westfalen", "Rheinland-Pfalz", "Saarland", "Sachsen",
    "Sachsen-Anhalt", "Schleswig-Holstein", "Thüringen"
  ].freeze

  CURRENCY_PER_CORRECT_ANSWER = 1
  XP_PER_CORRECT_ANSWER = 10
  XP_PER_QUIZ_ANSWER = 3
  STATUS_TEXT_COST = 100

  before_save :censor_status_text

  validates :specialization, presence: true, presence: { message: "Fachbereich darf nicht leer sein" }, inclusion: { in: SPECIALIZATIONS, message: "Ungueltiger Fachbereich" }
  validates :state, presence: true, presence: { message: "Bundesland darf nicht leer sein" }, inclusion: { in: STATES, message: "Ungueltiges Bundesland" }

  private

  def censor_status_text
    return if status_text.blank?

    GameConfig::BLOCKED_WORDS.each do |word|
      pattern = word.chars.map { |char| Regexp.escape(char) }.join('\s*')
      self.status_text = status_text.gsub(/#{pattern}/i, "*" * word.length)
    end
  end
end
