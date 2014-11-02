class Part < ActiveRecord::Base
  has_many :equipments
  belongs_to :light
  #has_many :lights
  #belongs_to :part
  #belongs_to :equipment
  #belongs_to :part_info_id, :polymorphic => true
  #has_one :parts, as: :partable


  #belongs_to :part_info_id
  #belongs_to :incentive_id

  
end
