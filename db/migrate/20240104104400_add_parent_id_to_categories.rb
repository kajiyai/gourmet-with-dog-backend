class AddParentIdToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :parent_id, :uuid
    add_index :categories, :parent_id
  end
end
