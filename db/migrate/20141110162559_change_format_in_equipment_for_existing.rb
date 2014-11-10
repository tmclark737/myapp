class ChangeFormatInEquipmentForExisting < ActiveRecord::Migration
  def change
  
  	remove_column :equipment, :existing, :binary

  	change_table :equipment do |t|
	  t.boolean :existing
	end

  end
end
