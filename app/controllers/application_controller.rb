class ApplicationController < ActionController::Base
  helper_method :current_admin_user

  def current_admin_user
    current_user.is_admin?
  end
end
