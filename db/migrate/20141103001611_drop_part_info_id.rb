class DropPartInfoId < ActiveRecord::Migration
  def change
  	remove_column :parts, :part_info_id
  end
end
