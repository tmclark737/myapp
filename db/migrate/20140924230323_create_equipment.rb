class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.references :zone, index: true
      t.integer :quantity
      t.integer :years_installed
      t.binary :existing

      t.timestamps
    end
  end
end
