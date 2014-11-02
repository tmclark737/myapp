class CreateHvacCodes < ActiveRecord::Migration
  def change
    create_table :hvac_codes do |t|
      t.string :description
      t.string :tag
      t.string :make
      t.string :model
      t.string :serial
      t.string :condition
      t.integer :hours_hvac_life
      t.string :cooling_capacity
      t.string :cooling_efficiency
      t.string :heating_capacity
      t.string :heating_efficiency
      t.string :refrigerant
      t.string :hours_description
      t.boolean :economizer_ysn
      t.string :filter_status
      t.string :thermostat_type
      t.string :heat_setpoint
      t.string :cool_setpoint
      t.integer :replace_equip_cost
      t.decimal :replace_install_hours
      t.string :pic_link

      t.timestamps
    end
  end
end
