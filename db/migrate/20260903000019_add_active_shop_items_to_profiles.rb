# frozen_string_literal: true

class AddActiveShopItemsToProfiles < ActiveRecord::Migration[8.1]
  def change
    add_reference :profiles, :active_avatar_item, foreign_key: { to_table: :shop_items }
    add_reference :profiles, :active_frame_item, foreign_key: { to_table: :shop_items }
  end
end
