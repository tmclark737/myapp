class PolymorphicParts < ActiveRecord::Migration
  def change
  	remove_column :parts, :part_info_type, :string

  	change_table :parts do |t|
  	  t.references :part_info, :polymorphic => true
      end
  end
end
