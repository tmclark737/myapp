class CreateIncentives < ActiveRecord::Migration
  def change
    create_table :incentives do |t|
      t.string :description
      t.integer :kwh
      t.integer :kw
      t.integer :qty
      t.decimal :max_percent
      t.integer :addon_option_qty

      t.timestamps
    end
  end
end
