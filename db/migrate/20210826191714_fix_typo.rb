class FixTypo < ActiveRecord::Migration[6.0]
  def change
    rename_column :gardens, :lenght, :length
    rename_column :gardens, :height_in_squares, :length_in_squares
  end
end
