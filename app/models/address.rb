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
class Address < ApplicationRecord
  has_many :restaurants
end
