class ChangePlantIdNull < ActiveRecord::Migration[6.0]
  def change
    change_column :squares, :plant_id, :integer, null: true
  end
end
