class RelampCalc

  def equip_id()
    puts "Please enter the equipment_id:"
    equipment_id = gets.chomp
    @equipment = Equipment.find(equipment_id)
  end

  def total_hours
    #define variables
    part = @equipment.part
    schedule = @equipment.schedule

    if part.element_type == "Hvac"
      total_hours = 8760
    else
      if part.element.occ_sensor_ysn
        powered_pct = 1- part.element.occ_sensor.savings_pct
      else
        powered_pct = 1
      end
      

      if schedule.w_day_stop > schedule.w_day_begin
      #If it is a regular schedule (start time is before stop time.)
        schedule_diff = ((schedule.w_day_stop-schedule.w_day_begin)*(5 * 52.1775/3600))+((schedule.w_end_stop-schedule.w_end_begin)*(2 * 52.1775/3600))
      else
      #For overnight schedules (stop time is the next morning i.e. over night)
        schedule_diff = (((schedule.w_day_stop-schedule.w_day_begin)/3600)+24)*(5 * 52.1775)+(((schedule.w_end_stop-schedule.w_end_begin)/3600)+24)*(2 * 52.1775)
      end
      total_hours = schedule_diff*powered_pct
    end
  end


  def year_hours_base

  end

#rsRelamp.Fields("rlmpYrHrsBase") = fncTotalHrs(rsQry.Fields("schBaseWdayStart"), rsQry.Fields("schBaseWdayStop"), rsQry.Fields("schBaseWendStart"), rsQry.Fields("schBaseWendStop"), rsQry.Fields("EIDequipTypeID"), -1, rsQry.Fields("lightOccSensorBase"), rsQry.Fields("EEMoccSensorProp"), rsQry.Fields("OCCssSavings"))
end
