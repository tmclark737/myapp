class CreateHvacs < ActiveRecord::Migration
  def change
    create_table :hvacs do |t|
      t.integer :kw_saved
      t.integer :kwh_saved
      t.integer :therm_saved
      t.integer :hrs_to_replace
      t.references :hvac, index: true

      t.timestamps
    end
  end
end
