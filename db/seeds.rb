# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Schedule.delete_all
Equipment.delete_all
schedule = Schedule.create!(w_day_stop:Time.now, w_day_begin:(Time.now-2.days))
equipment = Equipment.create!(zone_id:1, quantity:3, years_installed:5)
puts 'succcess'
