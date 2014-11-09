class ChangeTableNameBack < ActiveRecord::Migration
  def change
  	rename_column :hvacs, :hvac_info_id, :hvac_code_id
  	rename_column :lights, :light_info_id, :light_code_id
  end
end
