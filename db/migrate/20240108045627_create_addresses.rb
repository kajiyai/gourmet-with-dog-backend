class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses, id: :uuid do |t|
      t.string :street
      t.string :city
      t.string :prefecture

      t.timestamps
    end
  end
end
