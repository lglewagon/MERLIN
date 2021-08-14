class AddAddressAndModifyLatAndLon < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :address, :string
    change_column :gardens, :latitude, :float
    change_column :gardens, :longitude, :float
  end
end
