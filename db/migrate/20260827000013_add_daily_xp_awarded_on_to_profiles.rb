class AddDailyXpAwardedOnToProfiles < ActiveRecord::Migration[8.1]
  def change
    add_column :profiles, :daily_xp_awarded_on, :date
  end
end
