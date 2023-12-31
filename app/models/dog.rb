# == Schema Information
#
# Table name: dogs
#
#  id         :uuid             not null, primary key
#  age        :integer
#  allergy    :string
#  image_url  :string
#  name       :string
#  size       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  breed_id   :integer
#  user_id    :uuid             not null
#
# Indexes
#
#  index_dogs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Dog < ApplicationRecord
  belongs_to :user
  belongs_to :dog_breed, class_name: 'DogBreed', foreign_key: 'breed_id'
end
