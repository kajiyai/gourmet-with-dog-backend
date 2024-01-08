class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.page(params[:page]).per(5)
    render json: @restaurants
  end
end
