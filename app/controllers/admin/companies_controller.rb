class Admin::CompaniesController < Admin::BaseController
  # def manage
  #   @company = Company.find(current_admin_user.company_id)
  #   render 'show'
  # end

  def show
    # check that the current admin user's company ID is the same as the ID we are going to show
    # @company = Company.find(current_admin_user.company_id)
    # Show my own company
  end

  def edit
  end

end
