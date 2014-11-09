class ChangeTableNamesBack < ActiveRecord::Migration
  def change
  	  	rename_table :light_info, :light_codes
  	rename_table :hvac_info, :hvac_codes
  end
end
