class AddHvacIdToParts < ActiveRecord::Migration
  def change
    add_reference :parts, :hvac, index: true
  end
end
