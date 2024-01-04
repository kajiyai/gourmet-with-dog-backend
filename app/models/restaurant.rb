# == Schema Information
#
# Table name: restaurants
#
#  id                 :uuid             not null, primary key
#  feature            :text
#  image_url          :string
#  max_price          :decimal(, )
#  min_price          :decimal(, )
#  name               :string
#  pet_friendly_score :integer
#  phone_number       :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  address_id         :uuid
#  category_id        :uuid
#  owner_id           :uuid
#
# Indexes
#
#  index_restaurants_on_address_id   (address_id)
#  index_restaurants_on_category_id  (category_id)
#  index_restaurants_on_owner_id     (owner_id)
#
class Restaurant < ApplicationRecord
  belongs_to :owner
  belongs_to :category, foreign_key: 'category_id'
  has_and_belongs_to_many :amenities

  validates :name, presence: true
  validates :phone_number, presence: true
end
