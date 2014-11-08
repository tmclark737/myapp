class Light < ActiveRecord::Base
  belongs_to :occ_sensor
  belongs_to :light_code

			  
				  has_one :part, :as =>:element
				  has_one :equipment, :through => :parts






  ###has_many :parts, :as => :partable
  #Last Attempt at Polymorphic
  #has_many :part_info_id, :as => :partable

  #working the two association way
  #has_many :parts


  #belongs_to :parts
  #has_many :parts, :as => :part_info_id
  #belongs_to :space_type

end
