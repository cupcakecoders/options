class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_admin_user!

  def verify_admin_user!
      unless current_admin_user
        flash[:alert] = "Must be an admin to proceed"
        redirect_to root_path
      end
  end

  def pundit_user
    current_admin_user
  end

  def dashboard
  end
  
end
