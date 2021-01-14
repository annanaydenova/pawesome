class ApplicationController < ActionController::Base
  # skip_before_action :authenticate_user!, only: :home
  before_action :configure_permitted_parameters, if: :devise_controller?

  def home
  end

  def configure_permitted_parameters
    attributes = [:first_name, :last_name, :email, :city, :about, :user_type]

    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :avatar, :first_name, :last_name, :bio, :team_id])
  end
  
end
