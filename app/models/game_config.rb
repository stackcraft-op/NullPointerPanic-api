# frozen_string_literal: true

class GameConfig
  SPECIALIZATIONS = %w[FIAE FISI].freeze
  STATES = [
    "Baden-Württemberg", "Bayern", "Berlin", "Brandenburg", "Bremen",
    "Hamburg", "Hessen", "Mecklenburg-Vorpommern", "Niedersachsen",
    "Nordrhein-Westfalen", "Rheinland-Pfalz", "Saarland", "Sachsen",
    "Sachsen-Anhalt", "Schleswig-Holstein", "Thüringen"
  ].freeze

  CURRENCY_PER_CORRECT_ANSWER = 1
  XP_PER_CORRECT_DAILY_ANSWER = 10
  XP_PER_CORRECT_QUIZ_ANSWER = 3
  STATUS_TEXT_COST = 100
  STARTER_AVATAR_ID = 17
  STREAK_BONUS_CURRENCY = 10

  TYPE_CATEGORIES = %w[avatar frame].freeze

  BLOCKED_WORDS = %w[
    hurensohn hure nutte fotze wichser schlampe arschloch
    missgeburt spast spasti mongo bastard drecksau
    scheisse scheiße ficken
  ].freeze
end
