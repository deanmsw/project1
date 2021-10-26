class AddLongitudeAndLatitudeToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :longitude, :float
    add_column :products, :latitude, :float
  end
end
