class CreateDogBreeds < ActiveRecord::Migration[7.0]
  def change
    create_table :dog_breeds, id: :uuid do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
