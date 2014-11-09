class MoveCostsToPartsTable < ActiveRecord::Migration
  def change

  	remove_column :light_codes, :life, :integer
  	remove_column :light_codes, :relamp_glass_cost, :integer
  	remove_column :light_codes, :relamp_install_hours, :float
  	remove_column :light_codes, :replace_ballast_cost, :integer
  	remove_column :light_codes, :reballast_install_hours, :float
  	remove_column :light_codes, :ballast_life_hours, :integer


 	remove_column :hvac_codes, :replace_equip_cost, :integer
 	remove_column :hvac_codes, :replace_install_hours, :decimal
 	remove_column :hvac_codes, :life, :integer
  	
  	
  	add_column :parts, :life, :integer






  end
end
