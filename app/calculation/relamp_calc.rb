class RelampCalc
  WEEKS_PER_YEAR = 52.1775
  HOURS_PER_YEAR = 8760

  def initialize(equipment)
    @equipment = equipment
  end

  def eem_cost
    if @equipment.existing == false then
      part = @equipment.part
      financial = @equipment.zone.occupant.project.financial
      equipment = @equipment
      eem_cost =  (part.cost+(financial.hourly_maintenance_cost*part.install_hrs))*equipment.quantity
    else
      eem_cost = 0
    end
  end

  def total_hours(part, schedule)
    #define variables
    #part = @equipment.part
    #schedule = @equipment.schedule

    if part.element_type == "Hvac"
      8760
    else
      if part.element.occ_sensor_ysn
        percent_powered = 1- part.element.occ_sensor.savings_pct
      else
        percent_powered = 1
      end
      

      if schedule.w_day_stop > schedule.w_day_begin
      #If it is a regular schedule (start time is before stop time.)
        schedule_diff = ((schedule.w_day_stop-schedule.w_day_begin)*(5 * WEEKS_PER_YEAR/3600))+((schedule.w_end_stop-schedule.w_end_begin)*(2 * 52.1775/3600))
      else
      #For overnight schedules (stop time is the next morning i.e. over night)
        schedule_diff = (((schedule.w_day_stop-schedule.w_day_begin)/3600)+24)*(5 * WEEKS_PER_YEAR)+(((schedule.w_end_stop-schedule.w_end_begin)/3600)+24)*(2 * 52.1775)
      end
      schedule_diff*percent_powered
    end
  end

    private

  def replace_count(year)
    last_year = year -1
    part = @equipment.part
    

    current_count = ((total_hours*(year+@equipment.years_installed))/part.life).to_i
    previous_count = ((total_hours*(last_year+@equipment.years_installed))/part.life).to_i
    current_count-previous_count
  end


  def part_cost(year)
    part = @equipment.part
    financial = @equipment.zone.occupant.project.financial
    equipment = @equipment

    (part.cost+(financial.hourly_maintenance_cost*part.install_hrs))*equipment.quantity*replace_count(year)
  
  end

  def light_energy
    
    light_code = @equipment.part.element.light_code
    light_code.kw_per_fixture*@equipment.quantity*total_hours

  end

  def light_demand
    light_code = @equipment.part.element.light_code
    light_code.kw_per_fixture*@equipment.quantity
  end

  def light_energy_dollars
    @utility_calc.energy_rate * light_energy
  end

  def light_demand_dollars
    @utility_calc.demand_rate * light_demand
  end




#rsRelamp.Fields("rlmpBaseCost") = ((rsQry.Fields("EEMequipCost") + rsQry.Fields("EEMinstallCost")) * rsQry.Fields("EIDqtyProp")) _
 #                                    + ((rsQry.Fields("EEMAddOnOptionEquipCost") + rsQry.Fields("EEMAddOnOptionInstallCost")) * rsQry.Fields("EIDAddOnOptionQty"))

 



end
