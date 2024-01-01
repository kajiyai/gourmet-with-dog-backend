class Restaurant < ApplicationRecord
  belongs_to :owner
  belongs_to :categorymaster, foreign_key: 'category_id'
  belongs_to :amenitymaster, foreign_key: 'amenity_id'

  validates :name, presence: true
  validates :phone_number, presence: true
end
