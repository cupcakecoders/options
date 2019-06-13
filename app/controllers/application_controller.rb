class ApplicationController < ActionController::Base
  helper_method :current_admin_user, :current_employee_user
  
  include Pundit
	protect_from_forgery with: :exception

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

  #def pundit_user    
    #AuthorizationContext.new(current_user, current_organization)  
    #end
  #end


end
