class CreateReviewImages < ActiveRecord::Migration[7.0]
  def change
    create_table :review_images, id: :uuid do |t|
      t.references :review, null: false, foreign_key: true, type: :uuid
      t.string :image_url

      t.timestamps
    end
  end
end
