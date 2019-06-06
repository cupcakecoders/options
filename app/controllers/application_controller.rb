class ApplicationController < ActionController::Base
  helper_method :current_admin_user

  #def current_admin_user
    #@adminuser = current_user.is_admin?
  #end

  def current_admin_user
    if current_user && current_user.is_admin?
        return current_user
     else
       return nil
     end
  end


end
