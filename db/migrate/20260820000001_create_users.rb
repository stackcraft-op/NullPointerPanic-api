# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :email
      t.string  :password_digest
      t.date    :last_active_on
      t.integer :current_streak, default: 0
      t.integer :longest_streak, default: 0
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
  end
end