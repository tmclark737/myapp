class Part < ActiveRecord::Base
  
  belongs_to :equipment
  belongs_to :partable, polymorphic: true
  has_one :parts, as: :partable


  belongs_to :part_info_id
  belongs_to :incentive_id

  
end
