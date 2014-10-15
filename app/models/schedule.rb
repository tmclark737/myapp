class Schedule < ActiveRecord::Base

  belongs_to :equipment

  def weekday_hours
  	(w_day_stop-w_day_begin)/(60*60)
  end


end
