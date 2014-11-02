class Light < ActiveRecord::Base
  

  #belongs_to :parts
  has_many :parts
  #has_many :parts, :as => :part_info_id
  #belongs_to :space_type

end
