class RemoveCategoryIdFromRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :category_id, :uuid
  end
end
