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
#  owner_id           :uuid
#
# Indexes
#
#  index_restaurants_on_address_id  (address_id)
#  index_restaurants_on_owner_id    (owner_id)
#
class Restaurant < ApplicationRecord
  belongs_to :owner
  has_and_belongs_to_many :amenities
  has_and_belongs_to_many :categories
  belongs_to :address
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :phone_number, presence: true
end
