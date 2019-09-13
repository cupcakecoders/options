class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :verify_current_employee_user!

    def dashboard
        @result = get_calculation_if_post
        user = current_employee_user
        @options_value = user.company.option_values.last.options_price * user.options.sum(:number_of_options)
        @user_options_total = user.options.sum(:number_of_options)
        @company = user.company.company_name
        @firstname = user.firstname
        @options_value_all = user.company.option_values.where('options_price > 0')
        
        # @dat = {]
        # @options_value_all.each do |x|  
        #     @dat[x[:date]] = x[:options_price]
        # end
       
        @dat = @options_value_all.map do |x|
            [x.date, x.options_price]
        end


        #return an array of arrays instead a hash

        # user.company.option_values.select(:options_price).all
        # user.company.option_values.where('options_price > 0')
    end

private

    def verify_current_employee_user!
        unless current_employee_user
        flash[:alert] = "Must be a current employee to proceed"
        redirect_to root_path
        end
    end

    def calculator_params
        params.require(:calculator).permit(:quantity, :optionprice)
    end

    def get_calculation_if_post
        return nil unless request.post? && params[:calculator]
        Calculator.new(
            calculator_params[:quantity],
            calculator_params[:optionprice]
        ).futurevalue
    end
end

 