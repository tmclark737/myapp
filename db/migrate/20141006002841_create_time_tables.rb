class CreateTimeTables < ActiveRecord::Migration
  def change
    create_table :time_tables do |t|
      t.string :name
      t.datetime :w_day_start
      t.datetime :w_day_stop
      t.datetime :w_end_start
      t.datetime :w_end_stop
      t.text :note

      t.timestamps
    end
  end
end
