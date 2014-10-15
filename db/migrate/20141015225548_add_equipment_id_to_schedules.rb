class AddEquipmentIdToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :equipment_id, :integer
  end
end
