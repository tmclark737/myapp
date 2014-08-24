class Occupant < ActiveRecord::Base
  belongs_to :project
has_many :zones, dependent: :destroy

end
