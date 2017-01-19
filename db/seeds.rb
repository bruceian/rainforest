# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Condo.create(unit: 207, number_of_rooms: 2, den: true, price: 500000, description: 'North side of the bldg')
Condo.create(unit: 310, number_of_rooms: 1, den: false, price: 100000, description: 'West side of the bldg')
Condo.create(unit: 406, number_of_rooms: 3, den: true, price: 1000000, description: 'East side of the bldg')
Condo.create(unit: 101, number_of_rooms: 4, den: true, price: 1000000, description: 'South side of the bldg')
