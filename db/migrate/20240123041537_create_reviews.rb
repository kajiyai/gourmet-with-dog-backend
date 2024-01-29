class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews, id: :uuid do |t|
      t.uuid :user_id
      t.uuid :restaurant_id
      t.integer :evaluation
      t.text :comment
      t.datetime :visited_at

      t.timestamps
    end

    add_index :reviews, :user_id
    add_index :reviews, :restaurant_id
  end
end
