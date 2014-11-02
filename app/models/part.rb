class Part < ActiveRecord::Base
  belongs_to :part_info_id
  belongs_to :incentive_id
end
