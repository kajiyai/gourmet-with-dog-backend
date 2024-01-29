class Admin::UsersController < ApplicationController
  before_action :authenticate_v1_user!
  before_action :ensure_admin!

  def index
    @users = User.all
    render json: @users
  end

private

  def ensure_admin!
    # 現在のユーザーが管理者でなければ、アクセスを拒否
    redirect_to root_path, alert: 'Access denied!' unless current_v1_user.admin?
  end
end