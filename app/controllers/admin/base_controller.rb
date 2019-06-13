class Admin::BaseController < ApplicationController
  before_action :authenticate_user!, :current_admin_user

  def pundit_user
    current_admin_user
  end

  def dashboard
  end
end
