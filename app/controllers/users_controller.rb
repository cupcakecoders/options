class UsersController < ApplicationController

    def dashboard
        @result = get_calculation_if_post
    end

private

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