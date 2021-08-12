class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.integer :lenght
      t.integer :width
      t.integer :area
      t.integer :latitude
      t.integer :longitude
      t.integer :temperature_max
      t.integer :temperature_min
      t.integer :sunshine
      t.integer :shoe_size

      t.timestamps
    end
  end
end
