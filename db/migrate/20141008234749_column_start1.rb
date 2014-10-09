class ColumnStart1 < ActiveRecord::Migration
  def change
  	rename_column :time_tables, :w_day_start, :w_day_begin
  end
     	
end
