class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :temperature_max
      t.integer :temperature_min
      t.json :associations, default: {}
      t.integer :harvest_day_after_planting
      t.integer :length
      t.integer :width
      t.integer :sunshine

      t.timestamps
    end
  end
end
