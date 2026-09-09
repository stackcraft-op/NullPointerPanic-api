# frozen_string_literal: true

class ShopItem < ApplicationRecord
  has_many :owned_shop_items, dependent: :destroy

  validates :name, presence: true
  # greater_than_or_equal_to statt greater_than: "Junior" in db/seeds.rb ist
  # der kostenlose Start-Avatar (price: 0) - mit greater_than: 0 liess sich
  # der nur deshalb je anlegen, weil er in bestehenden Datenbanken schon
  # existierte (find_or_create_by! validiert dann nicht neu). In einer
  # frischen Datenbank (z.B. neuer Docker-Container) schlaegt db:seed damit
  # fehl.
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :type_category, presence: true, inclusion: { in: GameConfig::TYPE_CATEGORIES }
end
