class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :address
      t.string :area
      t.string :city
      t.string :owner

      t.timestamps
    end
  end
end
