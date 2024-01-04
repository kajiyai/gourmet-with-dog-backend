class CreateJoinTableRestaurantAmenity < ActiveRecord::Migration[7.0]
  def change
    create_join_table :restaurants, :amenities do |t|
      t.index [:restaurant_id, :amenity_id]
      t.index [:amenity_id, :restaurant_id]
    end
  end
end
