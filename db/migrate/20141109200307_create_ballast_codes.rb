class CreateBallastCodes < ActiveRecord::Migration
  def change
    create_table :ballast_codes do |t|
      t.string :description
      t.float :ballast_factor
      t.string :pic

      t.timestamps
    end
  end
end
