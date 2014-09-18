class AddProjectIdToOccupants < ActiveRecord::Migration
  def change
    add_column :occupants, :project, :integer
  end
end
