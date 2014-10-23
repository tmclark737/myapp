#Utility Calculation


class UtilityCalc
  #def initialize(equipment)
  #  @equipment = equipment
  #end 

  def schedule_calculation ()
  #Schedule.create ([{:name => '24x7 number 3', :w_day_begin => '2000-01-01 00:00:01', :w_day_stop => '2000-01-01 11:59:59', :w_end_begin => '2000-01-01 00:00:01', :w_end_stop => '2000-01-01 11:59:59'}])
    Schedule.first
  end

  def weekday_utility_cost
  	occupant = Occupant.find(1)
    equipment = Equipment.find(3)
  	equipment.schedule.weekday_hours * 0.15
  end

  def weekday_cost
    schedule = @equipment.schedule
    daily_hours = schdule.w_day_stop - schedule.w_day_start
    weekly_hours = daily_hours * 5

    @equipment.zone.occupant.utility.summer_energy_peak * weekly_hours

   #  #Equipment.find_by(name: 'name!') # only returns the first one
   #  #Equipment.where(name: 'name') # returns a collection of all
  	# schedule = Schedule.new(w_day_stop:Time.now, w_day_begin:(Time.now-2.days))
  	# schedule.weekday_hours
  end


end



# in yoru console
#equipment = Equipment.first # or whatever
#UtilityCalc.new(equipment)