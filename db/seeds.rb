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

gardens = Garden.create([{length: 1}, {width: 2}, {area: 3}, {latitude: 45.729566}, {longitude: 4.827962}, {temperature_max: 25}, {temperature_min: 12}, {sunshine: 15}, {shoe_size: 43}, {address: "École normale supérieure de Lyon, Pl. de l'École, 69007 Lyon"}])
gardens = Garden.create([{length: 110}, {width: 2}, {area: 10}, {latitude: 40.689249}, {longitude: -74.044500}, {temperature_max:45 }, {temperature_min: 0}, {sunshine: 5}, {shoe_size: 43}, {address: "New York, État de New York 10004, États-Unis"}])
gardens = Garden.create([{length: 1}, {width: 2}, {area: 1}, {latitude: 48.858370}, {longitude: 2.294481}, {temperature_max: 25}, {temperature_min: 24}, {sunshine: 35}, {shoe_size: 37}, {address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris"}])

#@squares = Square.create!([{length_fix: 1}, {width_fix: 2}, {position_x: 3}, {position_y:4}, {active: true}])
Plant.create!(name: "Abricot", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 25, length: 5, width: 5, sunshine: 2, image: 'Abricot')
Plant.create!(name: "Ail", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 35, length: 5, width: 5, sunshine: 2, image: 'Ail')
Plant.create!(name: "Artichaud", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 60, length: 5, width: 5, sunshine: 2, image: 'Artichaud')
Plant.create!(name: "Asperge", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 90, length: 5, width: 5, sunshine: 2, image: 'Asperge')
Plant.create!(name: "Basilic", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 120, length: 5, width: 5, sunshine: 2, image: 'Basilic')
Plant.create!(name: "Carottes", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 150, length: 5, width: 5, sunshine: 2, image: 'Carottes')
Plant.create!(name: "Celeri", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 10, length: 5, width: 5, sunshine: 2, image: 'Celeri')
Plant.create!(name: "Chou", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 200, length: 5, width: 5, sunshine: 2, image: 'Chou')
Plant.create!(name: "Choufleur", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 210, length: 5, width: 5, sunshine: 2, image: 'Choufleur')
Plant.create!(name: "Concombre", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 250, length: 5, width: 5, sunshine: 2, image: 'Concombre')
Plant.create!(name: "Courge", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 100, length: 5, width: 5, sunshine: 2, image: 'Courge')
Plant.create!(name: "Fraises", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 260, length: 5, width: 5, sunshine: 2, image: 'Fraises')
Plant.create!(name: "Laitue", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 261, length: 5, width: 5, sunshine: 2, image: 'Laitue')
Plant.create!(name: "Mure", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 180, length: 5, width: 5, sunshine: 2, image: 'Mure')
Plant.create!(name: "Navet", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 164, length: 5, width: 5, sunshine: 2, image: 'Navet')
Plant.create!(name: "Oignon", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 165, length: 5, width: 5, sunshine: 2, image: 'Oignon')
# Plant.create!(name: "Patate", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 64, length: 5, width: 5, sunshine: 2, image: 'Patate')
Plant.create!(name: "Piment", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 68, length: 5, width: 5, sunshine: 2, image: 'Piment')
Plant.create!(name: "Pois", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 63, length: 5, width: 5, sunshine: 2, image: 'Pois')
Plant.create!(name: "Poivron", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 12, length: 5, width: 5, sunshine: 2, image: 'Poivron')
Plant.create!(name: "Pomme", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 13, length: 5, width: 5, sunshine: 2, image: 'Pomme')
Plant.create!(name: "Romarin", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 24, length: 5, width: 5, sunshine: 2, image: 'Romarin')
Plant.create!(name: "Tomate", temperature_max: 32, temperature_min: 0, associations: {}, harvest_day_after_planting: 900, length: 5, width: 5, sunshine: 2, image: 'Tomate')

Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/01/2021', harvest_date: '01/12/2020', plant_id: 1, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/02/2021', harvest_date: '02/12/2021', plant_id: 1, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/03/2021', harvest_date: '03/12/2026', plant_id: 2, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/04/2021', harvest_date: '04/12/2025', plant_id: 3, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/05/2021', harvest_date: '05/12/2024', plant_id: 4, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/06/2021', harvest_date: '06/12/2023', plant_id: 4, garden_id: 1)
Square.create!(length_fix: 10, width_fix: 10, position_x: 1, position_y: 1, planting_date: '25/07/2021', harvest_date: '07/12/2022', plant_id: 5, garden_id: 1)


