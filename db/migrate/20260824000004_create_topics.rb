# frozen_string_literal: true

class CreateTopics < ActiveRecord::Migration[8.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :exam_type
      t.timestamps
    end
  end
end
