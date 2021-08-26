class AddSquareNumberToGarden < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :width_in_squares, :integer
    add_column :gardens, :height_in_squares, :integer
  end
end
