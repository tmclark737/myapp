class ChangingScheduleEquipmentAssociation < ActiveRecord::Migration
  def change
  	add_column :equipment, :schedule_id, :integer
  	remove_column :schedules,:equipment_id
  end
end
