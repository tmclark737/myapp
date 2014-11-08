class Light < ActiveRecord::Base

  has_one :part, :as =>:element
  has_one :equipment, :through => :parts

  belongs_to :occ_sensor
  belongs_to :light_code

end
