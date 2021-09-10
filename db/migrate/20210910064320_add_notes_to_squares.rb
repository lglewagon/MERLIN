class AddNotesToSquares < ActiveRecord::Migration[6.0]
  def change
    add_column :squares, :notes, :text
  end
end
