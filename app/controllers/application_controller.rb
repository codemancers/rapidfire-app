class ApplicationController < ActionController::Base
  protect_from_forgery

  # current user is already provided by devise
  # def current_user
  # end

  # this method will be used by rapidfire to determine whether current user
  # can manage questions or not.
  def can_administer?
    current_user.try(:email) == "admin@example.com"
  end
end
