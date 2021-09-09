class AddAssociationsToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :associations, :string, array: true, default: []
  end
end
