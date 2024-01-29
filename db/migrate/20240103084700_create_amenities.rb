class CreateAmenities < ActiveRecord::Migration[7.0]
  def change
    create_table :amenities, id: :uuid do |t|
      t.string :name, null: false
      t.string :type
      t.string :icon_url

      t.timestamps
    end
  end
end
