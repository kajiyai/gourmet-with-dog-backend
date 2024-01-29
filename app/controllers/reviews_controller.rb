class ReviewsController < ApplicationController
  before_action :authenticate_v1_user! # ユーザー認証
  before_action :set_review, only: %i[ show update destroy ]

  # GET /reviews
  def index
    @reviews = current_v1_user.reviews # 現在のユーザーに紐づくレビュー

    render json: @reviews
  end

  # GET /reviews/1
  def show
    render json: @review
  end

  # POST /reviews
  def create
    @review = current_v1_user.reviews.build(review_params) # 新しいレビューをビルド

    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
  end

  private
    def set_review
      @review = current_v1_user.reviews.find(params[:id]) # 現在のユーザーに紐づくレビューを検索
    end

    def review_params
      # 必要なパラメータを設定
      params.require(:review).permit(:restaurant_id, :comment, :evaluation, :visited_at)
    end
end
