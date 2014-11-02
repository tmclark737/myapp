class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.binary :occ_sensor_base
      t.references :space_type, index: true
      t.references :light, index: true

      t.timestamps
    end
  end
end
