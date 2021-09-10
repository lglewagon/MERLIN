# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all data"
Square.destroy_all
Garden.destroy_all
Plant.destroy_all

#@squares = Square.create!([{length_fix: 1}, {width_fix: 2}, {position_x: 3}, {position_y:4}, {active: true}])
Plant.create!(name: "Abricot", temperature_max: 32, temperature_min: 0, associations: ["Basilic", "Carottes", "Fraises"], harvest_day_after_planting: 25, length: 5, width: 5, sunshine: 2, image: 'Abricot')
Plant.create!(name: "Ail", temperature_max: 32, temperature_min: 0, associations: ["Carottes", "Fraises", "Laitue", "Oignon", "Patate", "Tomate"], harvest_day_after_planting: 35, length: 5, width: 5, sunshine: 2, image: 'Ail')
Plant.create!(name: "Artichaut", temperature_max: 32, temperature_min: 0, associations: ["Laitue", "Pois", "Oignon"], harvest_day_after_planting: 60, length: 5, width: 5, sunshine: 2, image: 'Artichaut')
Plant.create!(name: "Asperge", temperature_max: 32, temperature_min: 0, associations: ["Laitue", "Pois", "Tomate"], harvest_day_after_planting: 90, length: 5, width: 5, sunshine: 2, image: 'Asperge')
Plant.create!(name: "Basilic", temperature_max: 32, temperature_min: 0, associations: ["Tomate", "Chou", "Asperge"], harvest_day_after_planting: 120, length: 5, width: 5, sunshine: 2, image: 'Basilic')
Plant.create!(name: "Carottes", temperature_max: 32, temperature_min: 0, associations: ["Ail", "Chou", "Oignon", "Pois", "Tomate"], harvest_day_after_planting: 150, length: 5, width: 5, sunshine: 2, image: 'Carottes')
Plant.create!(name: "Celeri", temperature_max: 32, temperature_min: 0, associations: ["Tomate", "Choufleur", "Concombre"], harvest_day_after_planting: 10, length: 5, width: 5, sunshine: 2, image: 'Celeri')
Plant.create!(name: "Chou", temperature_max: 32, temperature_min: 0, associations: ["Carottes", "Ail", "Pois", "Tomate"], harvest_day_after_planting: 200, length: 5, width: 5, sunshine: 2, image: 'Chou')
Plant.create!(name: "Choufleur", temperature_max: 32, temperature_min: 0, associations: ["Celeri", "Patate", "Oignon"], harvest_day_after_planting: 210, length: 5, width: 5, sunshine: 2, image: 'Choufleur')
Plant.create!(name: "Concombre", temperature_max: 32, temperature_min: 0, associations: ["Celeri", "Chou", "Pois" ], harvest_day_after_planting: 250, length: 5, width: 5, sunshine: 2, image: 'Concombre')
Plant.create!(name: "Courge", temperature_max: 32, temperature_min: 0, associations: ["Pois", "Ail", "Tomate"], harvest_day_after_planting: 100, length: 5, width: 5, sunshine: 2, image: 'Courge')
Plant.create!(name: "Fraises", temperature_max: 32, temperature_min: 0, associations: ["Ail", "Laitue", "Oignon"], harvest_day_after_planting: 260, length: 5, width: 5, sunshine: 2, image: 'Fraises')
Plant.create!(name: "Laitue", temperature_max: 32, temperature_min: 0, associations: ["Fraises", "Ail", "Carottes", "Chou", "Oignon", "Pois", "Tomate"], harvest_day_after_planting: 261, length: 5, width: 5, sunshine: 2, image: 'Laitue')
Plant.create!(name: "Mure", temperature_max: 32, temperature_min: 0, associations: ["Basilic", "Fraises", "Ail"], harvest_day_after_planting: 180, length: 5, width: 5, sunshine: 2, image: 'Mure')
Plant.create!(name: "Navet", temperature_max: 32, temperature_min: 0, associations: ["Laitue", "Pois", "Tomate"], harvest_day_after_planting: 164, length: 5, width: 5, sunshine: 2, image: 'Navet')
Plant.create!(name: "Oignon", temperature_max: 32, temperature_min: 0, associations: ["Ail", "Carottes", "Laitue", "Tomate"], harvest_day_after_planting: 165, length: 5, width: 5, sunshine: 2, image: 'Oignon')
Plant.create!(name: "Patate", temperature_max: 32, temperature_min: 0, associations: ["Pois", "Ail", "Fraises", "Laitue", "Tomate"], harvest_day_after_planting: 64, length: 5, width: 5, sunshine: 2, image: 'Patate')
Plant.create!(name: "Piment", temperature_max: 32, temperature_min: 0, associations: ["Chou", "Carottes", "Choufleur", "Pois"], harvest_day_after_planting: 68, length: 5, width: 5, sunshine: 2, image: 'Piment')
Plant.create!(name: "Pois", temperature_max: 32, temperature_min: 0, associations: ["Carottes", "Chou", "Laitue", "Patate"], harvest_day_after_planting: 63, length: 5, width: 5, sunshine: 2, image: 'Pois')
Plant.create!(name: "Poivron", temperature_max: 32, temperature_min: 0, associations: ["Chou", "Carottes", "Choufleur"], harvest_day_after_planting: 12, length: 5, width: 5, sunshine: 2, image: 'Poivron')
Plant.create!(name: "Pomme", temperature_max: 32, temperature_min: 0, associations: ["Navet", "Romarin", "Basilic"], harvest_day_after_planting: 13, length: 5, width: 5, sunshine: 2, image: 'Pomme')
Plant.create!(name: "Romarin", temperature_max: 32, temperature_min: 0, associations: ["Chou", "Carottes", "Navet", "Tomate"], harvest_day_after_planting: 24, length: 5, width: 5, sunshine: 2, image: 'Romarin')
Plant.create!(name: "Tomate", temperature_max: 32, temperature_min: 0, associations: ["Ail", "Carottes", "Chou", "Oignon", "Patate"], harvest_day_after_planting: 900, length: 5, width: 5, sunshine: 2, image: 'Tomate')


puts "#{Plant.count} plants created"
