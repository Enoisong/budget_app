# app/controllers/registrations_controller.rb

class RegistrationsController < Devise::RegistrationsController
    def after_sign_up_path_for(_resource)
      flash[:notice] = "Thank you for signing up! You've been redirected to the categories page."
      categories_path
    end
  
    def sign_up_params
      params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
    end
  end
  