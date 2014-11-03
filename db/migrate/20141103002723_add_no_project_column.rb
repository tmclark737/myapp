class AddNoProjectColumn < ActiveRecord::Migration
  def change
  	add_column :equipment, :no_project, :boolean
  end
end
