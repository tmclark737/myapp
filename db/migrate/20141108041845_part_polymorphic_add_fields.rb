class PartPolymorphicAddFields < ActiveRecord::Migration
  def change
  	remove_column :equipment, :part_id, :integer
  	add_column :parts, :equipment_id, :integer
  	change_table :parts do |t|
  	  t.references :element, :polymorphic => true
      end
  end
end
