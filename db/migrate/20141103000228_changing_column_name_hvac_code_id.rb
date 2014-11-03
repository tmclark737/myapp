class ChangingColumnNameHvacCodeId < ActiveRecord::Migration
  def change
  	rename_column :hvacs, :hvac_id, :hvac_code_id
  end
end
