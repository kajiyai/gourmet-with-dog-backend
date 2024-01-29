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
class Amenity < ApplicationRecord
  has_and_belongs_to_many :restaurants
end
