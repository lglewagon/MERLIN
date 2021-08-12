class CreateSquares < ActiveRecord::Migration[6.0]
  def change
    create_table :squares do |t|
      t.integer :length_fix
      t.integer :width_fix
      t.integer :position_x
      t.integer :position_y
      t.date :planting_date
      t.date :harvest_date
      t.boolean :active
      t.references :garden, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
