class CreateOccSensors < ActiveRecord::Migration
  def change
    create_table :occ_sensors do |t|
      t.string :space_type
      t.float :savings_pct

      t.timestamps
    end
  end
end
