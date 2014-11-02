class AddLightToParts < ActiveRecord::Migration
  def change
    add_reference :parts, :light, index: true
  end
end
