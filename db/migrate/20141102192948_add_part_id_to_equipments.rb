class AddPartIdToEquipments < ActiveRecord::Migration
  def change
    add_reference :equipment, :part, index: true
  end
end
