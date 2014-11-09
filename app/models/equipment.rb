class Equipment < ActiveRecord::Base
  belongs_to :part
  has_many :lights, :through => :parts, :source => :element, :source_type => 'Light'
  has_many :hvacs, :through => :parts, :source => :element, :source_type => 'Hvac'


  belongs_to :zone
  belongs_to :schedule
  
end

