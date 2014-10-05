class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.timestamp :w_day_start
      t.timestamp :w_day_stop
      t.timestamp :w_end_start
      t.timestamp :w_end_stop
      t.text :note

      t.timestamps
    end
  end
end
