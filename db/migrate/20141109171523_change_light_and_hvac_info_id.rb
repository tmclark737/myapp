class ChangeLightAndHvacInfoId < ActiveRecord::Migration
  def change
  	rename_column :hvacs, :hvac_code_id, :hvac_info_id
  	rename_column :lights, :light_code_id, :light_info_id
  end
end
