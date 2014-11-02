class ChangingOccSensorBaseDatatype < ActiveRecord::Migration
  def change
  	remove_column :lights,:occ_sensor_base
  	add_column :lights,:occ_sensor_base, :boolean
  end
end
