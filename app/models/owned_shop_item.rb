# frozen_string_literal: true

class OwnedShopItem < ApplicationRecord
  belongs_to :user
  belongs_to :shop_item
end
