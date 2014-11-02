class ChangingColumnNameLightCodeId < ActiveRecord::Migration
  def change
  	rename_column :lights, :light_id, :light_code_id
  end
end
