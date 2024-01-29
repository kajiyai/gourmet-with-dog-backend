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
class DogBreed < ApplicationRecord
  has_many :dogs, foreign_key: 'breed_id'
end
