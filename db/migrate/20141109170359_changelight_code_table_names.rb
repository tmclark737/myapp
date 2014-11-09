class ChangelightCodeTableNames < ActiveRecord::Migration
  def change
  	rename_table :light_codes, :light_info
  	rename_table :hvac_codes, :hvac_info
  end
end
