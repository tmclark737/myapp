class Hvac < ActiveRecord::Base
  
  has_many :parts, :as => :partable
  #has_many :parts
  belongs_to :hvac_code


  #has_many :parts, as: :partable

end
