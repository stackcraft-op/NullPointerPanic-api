# frozen_string_literal: true

class AddStatusTextToProfiles < ActiveRecord::Migration[8.1]
  def change
    add_column :profiles, :status_text, :string
  end
end
