class ColumnStart2 < ActiveRecord::Migration
  def change

  	  	rename_column :time_tables, :w_end_start, :w_end_begin
  	  	rename_column :utility_rates, :part_start, :part_begin

  end
end
