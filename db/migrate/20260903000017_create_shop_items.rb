# frozen_string_literal: true

class CreateShopItems < ActiveRecord::Migration[8.1]
  def change
    create_table :shop_items do |t|
      t.string :type_category
      t.string :name
      t.integer :price
      t.string :image_url
      t.timestamps
    end
  end
end
