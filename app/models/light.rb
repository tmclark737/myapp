class Light < ActiveRecord::Base
  has_many :parts, as: :partable
  belongs_to :space_type

end
