#Utility Calculation


class UtilityCalc
  #def initialize(equipment)
  #  @equipment = equipment
  #end 

  def equip_id()
    puts "Please enter the equipment_id:"
    equipment_id = gets.chomp
    @equipment = Equipment.find(equipment_id)
  end

  def peak_begin()
    schedule = @equipment.schedule
    utility = @equipment.zone.occupant.utility_rate
    hours = (utility.peak_begin - schedule.w_day_begin)/3600
    if hours > 0 then
      hours = 0
    end
    hours

  end

  def peak_stop()
    schedule = @equipment.schedule
    utility = @equipment.zone.occupant.utility_rate
    hours =-(utility.peak_stop - schedule.w_day_stop)/3600

    if hours > 0 then
      hours = 0
    end
    hours
  end

  def part_begin()
    schedule = @equipment.schedule
    utility = @equipment.zone.occupant.utility_rate
    hours = (utility.part_begin - schedule.w_day_begin)/3600
    if hours > 0 then
      hours = 0
    end
    hours

  end
  def part_stop()
    schedule = @equipment.schedule
    utility = @equipment.zone.occupant.utility_rate
    hours =-(utility.part_stop - schedule.w_day_stop)/3600

    if hours > 0 then
      hours = 0
    end
    hours
  end

  def peak_hours()
    (6 + peak_begin + peak_stop) * ((5 * 26.07143) - 4)
  end

  def part_hours_summer()
    (13 + part_begin + part_stop) * ((5 * 26.07143) - 4) - peak_hours
  end

  def off_peak_hours_summer()
    schedule = @equipment.schedule
    weekday_hours = ((schedule.w_day_stop - schedule.w_day_begin)/3600)* ((5 * 26.07143) - 4) -peak_hours - part_hours_summer
    weekend_hours = ((schedule.w_end_stop - schedule.w_end_begin)/3600) * ((2 * 26.07143) + 4)
    weekday_hours+weekend_hours

  end

  def part_hours_winter
    (13 + part_begin + part_stop) * ((5 * 26.07143) - 8)
  end

  def off_peak_hours_winter
    schedule = @equipment.schedule
    weekday_hours = ((schedule.w_day_stop - schedule.w_day_begin)/3600)* ((5 * 26.07143) - 8) -peak_hours - part_hours_summer
    weekend_hours = ((schedule.w_end_stop - schedule.w_end_begin)/3600) * ((2 * 26.07143) + 8)
    weekday_hours+weekend_hours
  end

  def total_hours
    peak_hours + part_hours_summer + off_peak_hours_summer + part_hours_winter + off_peak_hours_winter
  end

  def avoided_energy_cost
    utility = @equipment.zone.occupant.utility_rate
    ((peak_hours * utility.summer_energy_peak) + (part_hours_summer * utility.summer_energy_part) + (off_peak_hours_summer * utility.summer_energy_off) + (part_hours_winter * utility.winter_energy_part) + (off_peak_hours_winter * utility.winter_energy_off))/100000
  end

  def demand_rate
    utility = @equipment.zone.occupant.utility_rate
    ((6*utility.summer_demand) + (6*utility.winter_demand))/100
  end

  def energy_rate
    avoided_energy_cost/total_hours
  end



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


  def utl_energy_rate()
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


