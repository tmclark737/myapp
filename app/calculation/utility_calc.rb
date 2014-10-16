#Utility Calculation


class UtilityCalc 
  def schedule_calculation ()
  #Schedule.create ([{:name => '24x7 number 3', :w_day_begin => '2000-01-01 00:00:01', :w_day_stop => '2000-01-01 11:59:59', :w_end_begin => '2000-01-01 00:00:01', :w_end_stop => '2000-01-01 11:59:59'}])
    Schedule.first
  end

  def weekday_utility_cost
  	equipment = Equipment.find(1)
  	equipment.schedule.weekday_hours * 0.15
  end

  def weekday_cost
  	schedule = Schedule.new(w_day_stop:Time.now, w_day_begin:(Time.now-2.days))
  	schedule.weekday_hours
  end


end
