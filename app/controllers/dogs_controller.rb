class DogsController < ApplicationController
  before_action :authenticate_v1_user! # 追加
  before_action :set_dog, only: %i[ show update destroy ]

  # GET /dogs
  def index
    @dogs = current_v1_user.dogs # 変更

    render json: @dogs
  end

  # GET /dogs/1
  def show
    render json: @dog
  end

  # POST /dogs
  def create
    @dog = current_v1_user.dogs.build(dog_params) # 変更

    if @dog.save
      render json: @dog, status: :created, location: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dogs/1
  def update
    if @dog.update(dog_params)
      render json: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dogs/1
  def destroy
    @dog.destroy
  end

  private
    def set_dog
      @dog = current_v1_user.dogs.find(params[:id]) # 変更
    end

    def dog_params
      params.require(:dog).permit(:name, :size, :breed_id, :age, :allergy, :image_url)
    end
end
