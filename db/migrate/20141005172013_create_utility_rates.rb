class CreateUtilityRates < ActiveRecord::Migration
  def change
    create_table :utility_rates do |t|
      t.string :sch_name
      t.timestamp :peak_start
      t.timestamp :peak_stop
      t.timestamp :part_start
      t.timestamp :part_stop
      t.integer :customer_charge
      t.integer :summer_energy_peak
      t.integer :summer_energy_part
      t.integer :summer_energy_off
      t.integer :winter_energy_part
      t.integer :winter_energy_off
      t.integer :summer_demand
      t.integer :winter_demand
      t.integer :pdp_energy
      t.integer :pdp_demand

      t.timestamps
    end
  end
end
