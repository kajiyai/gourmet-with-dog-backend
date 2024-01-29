class ChangeBreedIdToUuidInDogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :dogs, :breed_id, :integer
    add_column :dogs, :breed_id, :uuid
  end
end
