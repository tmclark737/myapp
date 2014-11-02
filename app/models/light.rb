class Light < ActiveRecord::Base
  belongs_to :space_type
  belongs_to :light
end
