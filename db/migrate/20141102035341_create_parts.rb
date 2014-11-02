class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :install_hrs
      t.references :part_info_id, index: true
      t.integer :part_info_type
      t.integer :cost
      t.string :purchase_url
      t.string :picture_url
      t.references :incentive_id, index: true
      t.string :description

      t.timestamps
    end
  end
end
