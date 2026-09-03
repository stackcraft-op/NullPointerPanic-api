# frozen_string_literal: true

module Api
  class ShopItemsController < ApplicationController
    def index
      owned_ids = @current_user.owned_shop_items.pluck(:shop_item_id)

      items = ShopItem.all.map do |item|
        {
          id: item.id,
          type: item.type_category,
          name: item.name,
          price: item.price,
          image_url: item.image_url,
          owned: owned_ids.include?(item.id)
        }
      end

      render json: items
    end

    def purchase
      item = ShopItem.find_by(id: params[:id])
      return render json: { error: "Item nicht gefunden" }, status: :not_found unless item

      profile = @current_user.profile
      already_owned = OwnedShopItem.exists?(user: @current_user, shop_item: item)

      if already_owned
        return render json: { error: "Item bereits im Besitz" }, status: :unprocessable_entity
      end

      if profile.currency < item.price
        return render json: { error: "Nicht genug Currency" }, status: :unprocessable_entity
      end

      OwnedShopItem.create!(user: @current_user, shop_item: item)
      profile.decrement!(:currency, item.price)

      render json: { currency: profile.currency }
    end
  end
end
