class Part < ActiveRecord::Base
  

        belongs_to :equipment
        belongs_to :element, :polymorphic => true




  #has_many :equipments 
  ###belongs_to :partable 
  #belongs_to :equipment

  #has_one :part_info, as: :partable
  #belongs_to :partable, :polymorphic => true
  
  #working the two association way
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
