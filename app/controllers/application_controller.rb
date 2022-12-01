class ApplicationController < ActionController::Base
  add_flash_types :danger, :info, :warning, :success
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
