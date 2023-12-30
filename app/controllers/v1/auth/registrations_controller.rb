class V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  include RackSessionFix

  private
    def sign_up_params
      params.require(:registration).permit(:name, :email, :password, :password_confirmation, :image_url)
    end
  
end
