class RelampCalc

  def equip_id()
    puts "Please enter the equipment_id:"
    equipment_id = gets.chomp
    @equipment = Equipment.find(equipment_id)
  end

  def total_hours
    if @equipment.part.part_info_type == 2
      total_hours = 8760
    else
      total_hours = 7777
    end
  end


  def year_hours_base

  end

#rsRelamp.Fields("rlmpYrHrsBase") = fncTotalHrs(rsQry.Fields("schBaseWdayStart"), rsQry.Fields("schBaseWdayStop"), rsQry.Fields("schBaseWendStart"), rsQry.Fields("schBaseWendStop"), rsQry.Fields("EIDequipTypeID"), -1, rsQry.Fields("lightOccSensorBase"), rsQry.Fields("EEMoccSensorProp"), rsQry.Fields("OCCssSavings"))
end
