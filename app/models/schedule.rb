class Schedule < ActiveRecord::Base

  has_many :equipment

  def weekday_hours
  	(w_day_stop-w_day_begin)/(60*60)
  end

  
end
