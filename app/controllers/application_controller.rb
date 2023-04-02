class ApplicationController < ActionController::Base
  def can_administer?
    current_user.try(:admin?)
  end
end
