class ApplicationController < ActionController::Base
  helper_method :current_admin_user, :current_employee_user

  #def current_admin_user
    #@adminuser = current_user.is_admin?
  #end

  def current_admin_user
    if current_user && current_user.is_admin?
      current_user
    else
      nil
    end
  end

  def current_employee_user
    if current_user && current_user.is_employee?
      current_user
    else
      nil
    end
  end

end
