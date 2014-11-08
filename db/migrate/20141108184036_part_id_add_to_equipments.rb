class PartIdAddToEquipments < ActiveRecord::Migration
  def change
  	remove_column :parts, :equipment_id, :integer

  	  	change_table :equipment do |t|
  	  t.references :part, :index => true
      end
  end
end
