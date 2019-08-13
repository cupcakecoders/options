class Admin::CompaniesController < Admin::BaseController
  # def manage
  #   @company = Company.find(current_admin_user.company_id)
  #   render 'show'
  # end

  def show
    @company = Company.find(params[:id])
    # check that the current admin user's company ID is the same as the ID we are going to show
    # @company = Company.find(current_admin_user.company_id)
    # Show my own company
  end

  def edit
    @company = Company.find(params[:id])
  end

 def create
   Company.create(params[:company])
 end

  def update
    @company = Company.find(params[:id])
      if @company.update_attributes(company_params)
      flash[:success] = "Company updated"
      redirect_to [:admin, @company]
      else
      flash[:alert] = "Company did not update"
      render 'edit'
    end
  end

  private

    def company_params
      params.require(:company).permit(:company_name, :address1, :address2, :town, :country, :postcode)
    end

end
