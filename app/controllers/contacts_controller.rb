class ContactsController < ApplicationController
  def home
  end

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    @contact.firstname = params[:firstname]
    @contact.lastname = params[:lastname]
    @contact.email = params[:email]
    @contact.industry_id = params[:industry_id]
    @contact.function_id = params[:function_id]
    @contact.company_id = params[:company_id]
    @contact.location_id = params[:location_id]
    @contact.job_title = params[:job_title]
    @contact.notes = params[:notes]

    if @contact.save
      redirect_to "/contacts", :notice => "Contact created successfully."
    else
      render 'new'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.firstname = params[:firstname]
    @contact.lastname = params[:lastname]
    @contact.email = params[:email]
    @contact.industry_id = params[:industry_id]
    @contact.function_id = params[:function_id]
    @contact.company_id = params[:company_id]
    @contact.location_id = params[:location_id]
    @contact.job_title = params[:job_title]
    @contact.notes = params[:notes]

    if @contact.save
      redirect_to "/contacts", :notice => "Contact updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    @contact.destroy

    redirect_to "/contacts", :notice => "Contact deleted."
  end
end
