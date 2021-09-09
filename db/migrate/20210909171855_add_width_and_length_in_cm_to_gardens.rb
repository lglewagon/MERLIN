class AddWidthAndLengthInCmToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :width_in_cm, :integer
    add_column :gardens, :length_in_cm, :integer
  end
end
