class RemoveAmenityIdFromRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :amenity_id, :uuid
  end
end
