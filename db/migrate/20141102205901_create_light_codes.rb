class CreateLightCodes < ActiveRecord::Migration
  def change
    create_table :light_codes do |t|
      t.date :check_date
      t.string :fixture_description
      t.string :fixture_code
      t.string :lamp_code
      t.integer :lamps_per_fixture
      t.float :w_per_lamp
      t.string :ballast
      t.float :ballast_factor
      t.float :kw_per_fixture
      t.string :note
      t.integer :design_lumens
      t.integer :cri
      t.integer :lamp_life_hours
      t.integer :ballast_life_hours
      t.string :base_type
      t.string :lamp_type
      t.integer :relamp_glass_cost
      t.float :relamp_install_hours
      t.integer :replace_ballast_cost
      t.float :reballast_install_hours
      t.string :pic_link

      t.timestamps
    end
  end
end
