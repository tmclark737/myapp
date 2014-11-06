class Part < ActiveRecord::Base
  has_many :equipments
  
  has_one :part_info, as: :partable
  #belongs_to :partable, :polymorphic => true
  
  #belongs_to :light
  #belongs_to :hvac
  



  #has_many :lights
  #belongs_to :part
  #belongs_to :equipment
  #belongs_to :part_info_id, :polymorphic => true
  #has_one :parts, as: :partable


  #belongs_to :part_info_id
  #belongs_to :incentive_id

  
end
