class CleanIdTagsFromParts < ActiveRecord::Migration
  def change
  	remove_column :parts, :partable_type, :string
  	remove_column :parts, :partable_id, :integer
  	remove_column :parts, :light_id, :string
  	remove_column :parts, :hvac_id, :integer
  end
end
