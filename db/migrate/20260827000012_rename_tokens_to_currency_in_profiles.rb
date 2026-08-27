class RenameTokensToCurrencyInProfiles < ActiveRecord::Migration[8.1]
  def change
    rename_column :profiles, :tokens, :currency
  end
end
