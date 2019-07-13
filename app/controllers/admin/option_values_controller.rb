class Admin::OptionValuesController < ApplicationController
require 'date'

def index
    @optionvalues = OptionValue.where(company_id: current_admin_user.company_id)
    #@companyname = Company.find(current_admin_user.company_id)
end

def show
    @optionvalue = OptionValue.find(params[:id])
end

def new
    @optionvalue = OptionValue.new
end

def create
    @optionvalue = OptionValue.new(optionvalue_params)
    @optionvalue.company_id = current_admin_user.company_id
    if @optionvalue.save
        flash[:notice] = "Option value successfully created"
        redirect_to [:admin, @optionvalue]
    else
        flash[:alert] = "Option value was not created"
      render 'new'
    end
end

def edit
    @optionvalue = OptionValue.find(params[:id])
end


def update
    @optionvalue = OptionValue.find(params[:id])
      if @optionvalue.update_attributes(optionvalue_params)
      flash[:success] = "Options updated"
      redirect_to [:admin, @optionvalue]
      else
      flash[:alert] = "Options did not update"
      render 'edit'
    end
end

def destroy
    OptionValue.find(params[:id]).destroy
    flash[:success] = "Options price deleted"
    redirect_to admin_option_values_path
end



private

    def optionvalue_params
      params.require(:option_value).permit(:options_price, :date)
    end

end

