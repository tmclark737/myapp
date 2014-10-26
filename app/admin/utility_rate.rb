ActiveAdmin.register UtilityRate do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

permit_params :sch_name, :peak_begin, :peak_stop, :part_begin, :part_stop, :customer_charge, :summer_energy_peak, :summer_energy_part, :summer_energy_off, :winter_energy_part, :winter_energy_off, :summer_demand, :winter_demand, :pdp_energy, :pdp_demand


end
