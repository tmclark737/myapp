#Utility Calculation


class UtilityRateCalc
  def initialize(equipment)
    @equipment = equipment
  end

  def demand_rate
    utility = @equipment.zone.occupant.utility_rate
    ((6*utility.summer_demand) + (6*utility.winter_demand))/100
  end

  def energy_rate
    avoided_energy_cost/total_hours
  end

  private

  def equip_id()
    puts "Please enter the equipment_id:"
    equipment_id = gets.chomp
    @equipment = Equipment.find(equipment_id)
    puts "hootay hoo - this is how we do"
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






end





