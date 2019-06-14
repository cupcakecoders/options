class Admin::UsersController < Admin::BaseController

  def index
    @users = User.where(company_id: current_admin_user.company_id)
  end

  def show
    @user = User.find(params[:id])
    unless @user.company_id == current_admin_user.company_id
      flash[:alert] = "You're not the right admin"
      redirect_to root_path
    end

    # @user = User.where(company_id: current_admin_user.company_id, id: params[:id]).first
    # unless @user
    #   flash[:alert] = "You're not the right admin"
    #   redirect_to root_path
    # end

    # probably the nicest
    # @user = User.find_by(company_id: current_admin_user.company_id, id: params[:id])
    # unless @user
    #   flash[:alert] = "You're not the right admin"
    #   redirect_to root_path
    # end
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
