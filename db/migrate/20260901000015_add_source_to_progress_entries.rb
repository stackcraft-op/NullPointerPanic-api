# frozen_string_literal: true

class AddSourceToProgressEntries < ActiveRecord::Migration[8.1]
  def change
    add_column :progress_entries, :source, :integer, default: 0
  end
end
