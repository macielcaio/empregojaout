class CompaniesController < ApplicationController
    def new
      @company = Company.new
      render :new
    end

    def create
      @company = Company.create(company_params)
      redirect_to @company
    end

    def show
      @company = Company.find(params[:id])
    end
    def company_params
      params.require(:company).permit(:name, :location, :mail, :phone)
    end
end
