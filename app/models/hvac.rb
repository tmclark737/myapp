class Hvac < ActiveRecord::Base
  has_many :parts


  #has_many :parts, as: :partable

end
