class AddUtilityRateIdToOccupants < ActiveRecord::Migration
  def change
  	add_column :occupants, :utility_rate_id, :integer
  end
end
