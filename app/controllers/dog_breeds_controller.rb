# app/controllers/dog_breeds_controller.rb
class DogBreedsController < ApplicationController
  def index
    @dog_breeds = DogBreed.all
    render json: @dog_breeds, only: [:id, :name]
  end
end
