class HoursLifeForBothLightAndHvac < ActiveRecord::Migration
  def change
  	rename_column :hvac_codes, :hours_hvac_life, :life
  	rename_column :light_codes, :lamp_life_hours, :life
  end
end
