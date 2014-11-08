class Hvac < ActiveRecord::Base
  belongs_to :hvac_code
  

					  has_one :part, :as =>:element
					  has_one :equipment, :through => :parts 



  




  ###has_many :parts, :as => :partable
  #working the two association way
  #has_many :parts

  #Last Attempt at Polymorphic
  #has_many :parts, :as => :partable
  
  


  #has_many :parts, as: :partable

end
