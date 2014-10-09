class ColumnStart4 < ActiveRecord::Migration
  def change
  	rename_table :time_tables, :schedules
  	rename_column :utility_rates, :part_start, :part_begin
  end
end
