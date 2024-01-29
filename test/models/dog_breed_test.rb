# == Schema Information
#
# Table name: dog_breeds
#
#  id         :uuid             not null, primary key
#  code       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class DogBreedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
