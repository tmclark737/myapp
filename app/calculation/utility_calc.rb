#Utility Calculation


class UtilityCalc
  #def initialize(equipment)
  #  @equipment = equipment
  #end 

  def print_equipments()
      project = Project.find(1)
      project.occupants.each do |occupant|
        occupant.zones.each do |zone|
          zone.equipments.each do |equipment|
            puts equipment
          end
        end 
      end
  end


  def d_peak_begin()
    puts "Please enter the schedule_id:"
    schedule_id = gets.chomp
    puts "Thanks!"
    puts "Please enter the utility_rate_id:"
    utility_id = gets.chomp
    utility = UtilityRate.find(utility_id)
    schedule = Schedule.find(schedule_id)
    puts utility.peak_begin
    (utility.peak_begin - schedule.w_day_begin)/3600

  end


  def start_vars
    @occupant = Occupant.find(3)
    @zone = Zone.find(1)
    @equipment = Equipment.find(3)
    
  end

  def print_vars
  @zone.equipment

  end


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
    daily_hours = schedule.w_day_stop - schedule.w_day_start
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


