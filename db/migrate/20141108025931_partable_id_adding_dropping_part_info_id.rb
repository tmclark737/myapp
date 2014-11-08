class PartableIdAddingDroppingPartInfoId < ActiveRecord::Migration
  def change
  	remove_column :parts, :part_info_type, :string
  	remove_column :parts, :part_info_id, :integer

  	  change_table :parts do |t|
  	  t.references :partable, :polymorphic => true
      end
  end
end
