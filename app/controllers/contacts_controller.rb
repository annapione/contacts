class ContactsController < ApplicationController
  def home

    @contacts = current_user.contacts
    @companies = Company.all
    @locations = Location.all
    @events = current_user.events
    @meetings = current_user.meetings
    @company_recent = Company.order("created_at DESC").limit(5)
    @location_recent = Location.order("created_at DESC").limit(5)
    @event_recent = Event.order("created_at DESC").limit(5)
    @company_contactcount = @companies.sort_by{ |company| company.contactcount}.reverse
    @location_contactcount = @locations.sort_by{ |location| location.contactcount}.reverse
    @event_contactcount = @events.sort_by{ |event| event.contactcount}.reverse

  end

  def about
  end

  def index


    @contacts = current_user.contacts.order(:id)
      respond_to do |format|
        format.html
        format.csv { render text: @contacts.to_csv }
    end

  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    @contact.user_id = params[:user_id]
    @contact.firstname = params[:firstname]
    @contact.lastname = params[:lastname]
    @contact.email = params[:email]
    @contact.function_id = params[:function_id]
    @contact.company_id = params[:company_id]
    @contact.location_id = params[:location_id]
    @contact.job_title = params[:job_title]
    @contact.notes = params[:notes]

    # if params[:company_name]
    #   @company = Company.new
    #   @company.name = params[:company_name]
    #   @company.save

    #  @contact.company_id = @company.id
    # end


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
    @contact.user_id = params[:user_id]
    @contact.firstname = params[:firstname]
    @contact.lastname = params[:lastname]
    @contact.email = params[:email]
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
