class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # current user is already provided by devise
  # def current_user
  # end

  # this method will be used by rapidfire to determine whether current user
  # can manage questions or not.
  def can_administer?
    current_user.try(:email) == "admin@example.com"
  end
end
