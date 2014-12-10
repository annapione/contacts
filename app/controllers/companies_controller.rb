class CompaniesController < ApplicationController
  def index

    @companies = Company.order(:name)

  end

  def show
    @company = Company.find(params[:id])
    @companycontacts = current_user.contacts.where({:company => @company.id })
    @companyevents = current_user.events.where({:company => @company.id})
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    @company.name = params[:name]
    @company.industry_id = params[:industry_id]
    @company.description = params[:description]

    if @company.save
      redirect_to "/companies", :notice => "Company created successfully."
    else
      render 'new'
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    @company.name = params[:name]
    @company.industry_id = params[:industry_id]
    @company.description = params[:description]

    if @company.save
      redirect_to "/companies", :notice => "Company updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @company = Company.find(params[:id])

    @company.destroy

    redirect_to "/companies", :notice => "Company deleted."
  end
end
