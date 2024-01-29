class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants, id: :uuid do |t|
      t.uuid :owner_id
      t.uuid :category_id
      t.uuid :amenity_id
      t.string :name
      t.uuid :address_id
      t.string :phone_number
      t.decimal :min_price
      t.decimal :max_price
      t.integer :pet_friendly_score
      t.text :feature
      t.string :image_url

      t.timestamps
    end

    add_index :restaurants, :owner_id
    add_index :restaurants, :category_id
    add_index :restaurants, :amenity_id
    add_index :restaurants, :address_id
  end
end
