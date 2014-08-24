class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :description
      t.references :occupant, index: true

      t.timestamps
    end
  end
end
