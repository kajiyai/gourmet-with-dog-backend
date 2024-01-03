class Restaurant < ApplicationRecord
  belongs_to :owner
  belongs_to :category, foreign_key: 'category_id'
  belongs_to :amenity, foreign_key: 'amenity_id'

  validates :name, presence: true
  validates :phone_number, presence: true
end
