class CreateFinancials < ActiveRecord::Migration
  def change
    create_table :financials do |t|
      t.references :project, index: true
      t.text :description
      t.boolean :has_capex
      t.integer :cost_of_capital
      t.string :finance_type
      t.integer :finance_term
      t.integer :reinvest_rate
      t.integer :inflation
      t.integer :hourly_maintenance_cost

      t.timestamps
    end
  end
end
