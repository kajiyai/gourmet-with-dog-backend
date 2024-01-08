# == Schema Information
#
# Table name: addresses
#
#  id          :uuid             not null, primary key
#  city        :string
#  postal_code :string
#  prefecture  :string
#  street      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
