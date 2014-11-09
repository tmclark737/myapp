class Ballast < ActiveRecord::Base

  has_one :part, :as =>:element
  has_one :equipment, :through => :parts
  
  belongs_to :ballast_code
end
