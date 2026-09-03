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

  validates :specialization, presence: true, presence: { message: "Fachbereich darf nicht leer sein" }, inclusion: { in: SPECIALIZATIONS, message: "Ungueltiger Fachbereich" }
  validates :state, presence: true, presence: { message: "Bundesland darf nicht leer sein" }, inclusion: { in: STATES, message: "Ungueltiges Bundesland" }
end
