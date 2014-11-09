class CreateBallasts < ActiveRecord::Migration
  def change
    create_table :ballasts do |t|
      t.references :ballast_code, index: true

      t.timestamps
    end
  end
end
