class relamp_calc

  def equip_id()
    puts "Please enter the equipment_id:"
    equipment_id = gets.chomp
    @equipment = Equipment.find(equipment_id)
  end

  def total_hours
  	@equipment
  end

  def year_hours_base

  end

rsRelamp.Fields("rlmpYrHrsBase") = fncTotalHrs(rsQry.Fields("schBaseWdayStart"), rsQry.Fields("schBaseWdayStop"), rsQry.Fields("schBaseWendStart"), rsQry.Fields("schBaseWendStop"), rsQry.Fields("EIDequipTypeID"), -1, rsQry.Fields("lightOccSensorBase"), rsQry.Fields("EEMoccSensorProp"), rsQry.Fields("OCCssSavings"))
end
