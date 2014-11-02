ActiveAdmin.register Hvac do


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

permit_params :kw_saved, :kwh_saved, :therm_saved, :hrs_to_replace, :hvac_id

end



  create_table "hvacs", force: true do |t|
    t.integer  "kw_saved"
    t.integer  "kwh_saved"
    t.integer  "therm_saved"
    t.integer  "hrs_to_replace"
    t.integer  "hvac_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end