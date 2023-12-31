class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :name
      t.string :size
      t.integer :breed_id
      t.integer :age
      t.string :allergy
      t.datetime :visited_at
      t.string :image_url

      t.timestamps
    end
  end
end
