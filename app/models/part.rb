class Part < ActiveRecord::Base
  
  belongs_to :element, :polymorphic => true
  has_many :equipments 

  #belongs_to :incentive_id

  
end
