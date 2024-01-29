# == Schema Information
#
# Table name: reviews
#
#  id            :uuid             not null, primary key
#  comment       :text
#  evaluation    :integer
#  visited_at    :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :uuid
#  user_id       :uuid
#
# Indexes
#
#  index_reviews_on_restaurant_id  (restaurant_id)
#  index_reviews_on_user_id        (user_id)
#
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :review_images, dependent: :destroy
end
