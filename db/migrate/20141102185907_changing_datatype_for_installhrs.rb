class ChangingDatatypeForInstallhrs < ActiveRecord::Migration
  def change
  	remove_column :parts,:install_hrs
  	add_column :parts,:install_hrs, :float
  end
end
