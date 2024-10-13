class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_count

  def set_count 
    @friends_count = 0#current_user.active_friends&.count || 0
    @friend_requests = 0#current_user.friend_requests&.count || 0
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :first_name, :last_name])
  end
end
