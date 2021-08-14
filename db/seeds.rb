# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#@squares = Square.create!([{length_fix: 1}, {width_fix: 2}, {position_x: 3}, {position_y:4}, {active: true}])
gardens = Garden.create!([{lenght: 1}, {width: 2}, {area: 3}])
Plant.create!([{name: "Carotte"}])