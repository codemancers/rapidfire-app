class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # this method will be used by rapidfire to determine whether current user
  # can manage questions or not.
  def can_administer?
    current_user.try(:email) == "admin@example.com"
  end

  # current user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user
end
