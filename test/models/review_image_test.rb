# == Schema Information
#
# Table name: review_images
#
#  id         :uuid             not null, primary key
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  review_id  :uuid             not null
#
# Indexes
#
#  index_review_images_on_review_id  (review_id)
#
# Foreign Keys
#
#  fk_rails_...  (review_id => reviews.id)
#
require "test_helper"

class ReviewImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
