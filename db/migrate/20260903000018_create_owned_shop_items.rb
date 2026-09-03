# frozen_string_literal: true

class CreateOwnedShopItems < ActiveRecord::Migration[8.1]
  def change
    create_table :owned_shop_items do |t|
      t.references :user, foreign_key: true
      t.references :shop_item, foreign_key: true
      t.timestamps
    end
    add_index :owned_shop_items, [ :user_id, :shop_item_id ], unique: true
  end
end
