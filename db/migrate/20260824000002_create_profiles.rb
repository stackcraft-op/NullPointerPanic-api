# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[8.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :specialization
      t.string :city
      t.string :state
      t.integer :experience, default: 0
      t.integer :tokens, default: 0
      t.timestamps
    end
  end
end
