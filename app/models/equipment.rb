class Equipment < ActiveRecord::Base
  belongs_to :zone

  has_one :schedule
end
