class Admin::UsersController < Admin::BaseController

  def index
    @user = User.where(company_id: current_admin_user.company_id)
  end

  def show
    # if user and (user.company_id == record.company_id)
    # @user = User.where(id: params[:id], company_id: current_admin_user.company_id).first
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.company_id = current_admin_user.company_id
    if @user.save
      redirect_to [:admin, @user]
    else
      render 'new'
    end
  end



  private

    def user_params
      params.require(:user).permit(:firstname, :email, :password,
                                   :password_confirmation)
    end
end
