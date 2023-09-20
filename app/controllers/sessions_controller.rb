# app/controllers/sessions_controller.rb

class SessionsController < Devise::SessionsController
    def after_sign_in_path_for(_resource)
      flash[:notice] = "Welcome back! You've been redirected to the categories page."
      categories_path
    end
  end
  