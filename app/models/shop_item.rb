# frozen_string_literal: true

class ShopItem < ApplicationRecord
  has_many :owned_shop_items, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :type_category, presence: true, inclusion: { in: GameConfig::TYPE_CATEGORIES }
end
