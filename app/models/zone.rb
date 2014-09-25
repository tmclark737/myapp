class Zone < ActiveRecord::Base
  belongs_to :occupant
  	has_many :equipments, dependent: :destroy
end
