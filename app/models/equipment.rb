class Equipment < ActiveRecord::Base
  belongs_to :zone
  belongs_to :schedule
end
