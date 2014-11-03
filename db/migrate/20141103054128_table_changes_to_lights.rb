class TableChangesToLights < ActiveRecord::Migration
  def change
  	rename_column :lights, :space_type_id, :occ_sensor_id
  	rename_column :lights, :occ_sensor_base, :occ_sensor_ysn
  end
end
