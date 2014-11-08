class Hvac < ActiveRecord::Base
  
  has_one :part, :as =>:element
  has_one :equipment, :through => :parts 

  belongs_to :hvac_code

end
