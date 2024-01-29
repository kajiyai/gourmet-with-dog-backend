# == Schema Information
#
# Table name: amenities
#
#  id         :uuid             not null, primary key
#  icon_url   :string
#  name       :string           not null
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class AmenityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
