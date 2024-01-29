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
# app/models/general_amenity.rb
class GeneralAmenity < Amenity
end
