class Part < ActiveRecord::Base
  
  belongs_to :element, :polymorphic => true
  has_one :equipment 

  #belongs_to :incentive_id

  
end
