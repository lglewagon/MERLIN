# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


squares = Square.create([{length_fix: 1}, {width_fix: 2}, {position_x: 3}, {position_y: 4}, {planting_date: "12/12/12"}, {harvest_date: "11/11/13"}, {active: true}])
squares = Square.create([{length_fix: 4}, {width_fix: 4}, {position_x: 1}, {position_y: 1}, {planting_date: "14/08/21"}, {harvest_date: "15/11/21"}, {active: false}])
squares = Square.create([{length_fix: 10}, {width_fix: 4}, {position_x: 1}, {position_y: 10}, {planting_date: "14/08/21"}, {harvest_date: "15/11/20"}, {active: true}])

gardens = Garden.create([{lenght: 1}, {width: 2}, {area: 3}, {latitude: 45.729566}, {longitude: 4.827962}, {temperature_max: 25}, {temperature_min: 12}, {sunshine: 15}, {shoe_size: 43}, {address: "École normale supérieure de Lyon, Pl. de l'École, 69007 Lyon"}])
gardens = Garden.create([{lenght: 110}, {width: 2}, {area: 10}, {latitude: 40.689249}, {longitude: -74.044500}, {temperature_max:45 }, {temperature_min: 0}, {sunshine: 5}, {shoe_size: 43}, {address: "New York, État de New York 10004, États-Unis"}])
gardens = Garden.create([{lenght: 1}, {width: 2}, {area: 1}, {latitude: 48.858370}, {longitude: 2.294481}, {temperature_max: 25}, {temperature_min: 24}, {sunshine: 35}, {shoe_size: 37}, {address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris"}])
=======
#@squares = Square.create!([{length_fix: 1}, {width_fix: 2}, {position_x: 3}, {position_y:4}, {active: true}])
gardens = Garden.create!([{lenght: 1}, {width: 2}, {area: 3}])
Plant.create!(name: "Carotte", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 30, length: 5, width: 5, sunshine: 2, image: 'carotte')
Plant.create!(name: "Artichaut", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 30, length: 5, width: 5, sunshine: 2, image: 'artichaut')
Plant.create!(name: "Haricot", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 30, length: 5, width: 5, sunshine: 2, image: 'haricot')
Plant.create!(name: "Patate", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 30, length: 5, width: 5, sunshine: 2, image: 'patate')
Plant.create!(name: "Salade", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 30, length: 5, width: 5, sunshine: 2, image: 'salade')
Plant.create!(name: "Tomate", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 30, length: 5, width: 5, sunshine: 2, image: 'tomate')
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/08/2021', harvest_date: '25/12/2021', plant_id: 1, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/08/2021', harvest_date: '25/12/2021', plant_id: 1, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/08/2021', harvest_date: '25/12/2021', plant_id: 2, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/08/2021', harvest_date: '25/12/2021', plant_id: 3, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/08/2021', harvest_date: '25/12/2021', plant_id: 4, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/08/2021', harvest_date: '25/12/2021', plant_id: 4, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/08/2021', harvest_date: '25/12/2021', plant_id: 5, garden_id: 1)


