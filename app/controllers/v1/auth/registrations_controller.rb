class V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController

  private
    def sign_up_params
      params.require(:registration).permit(:name, :email, :password, :image_url)
    end
  
end
