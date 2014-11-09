class Equipment < ActiveRecord::Base
  

  belongs_to :part
  has_many :lights, :through => :parts, :source => :element, :source_type => 'Light'
  has_many :hvacs, :through => :parts, :source => :element, :source_type => 'Hvac'
  has_many :ballasts, :through => :parts, :source => :element, :source_type => 'Ballast'


  belongs_to :zone
  belongs_to :schedule
  
end

