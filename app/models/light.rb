class Light < ActiveRecord::Base
  
  belongs_to :occ_sensor
  belongs_to :light_code
  has_many :parts


  #belongs_to :parts
  #has_many :parts, :as => :part_info_id
  #belongs_to :space_type

end
