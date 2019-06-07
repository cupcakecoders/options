class Admin::BaseController < ApplicationController
  before_action :authenticate_user!, :current_admin_user

  def dashboard
  end
end
