class RemoveAssociationsFromPlants < ActiveRecord::Migration[6.0]
  def change
    remove_column :plants, :associations, :json
  end
end
