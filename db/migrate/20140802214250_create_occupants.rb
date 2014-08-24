class CreateOccupants < ActiveRecord::Migration
  def change
    create_table :occupants do |t|
      t.string :name
      t.references :project, index: true

      t.timestamps
    end
  end
end
