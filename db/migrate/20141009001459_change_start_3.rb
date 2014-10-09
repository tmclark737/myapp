class ChangeStart3 < ActiveRecord::Migration
  def change

  	rename_table :time_tables, :schedules

  	rename_column :utility_rates, :peak_start, :peak_begin
  end
end
