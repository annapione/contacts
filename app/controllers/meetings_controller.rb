class MeetingsController < ApplicationController
  def index
    @meetings = current_user.meetings

      respond_to do |format|
        format.html
        format.csv { render text: @meetings.to_csv }
      end
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new
    @meeting.contact_id = params[:contact_id]
    @meeting.event_id = params[:event_id]
    @meeting.user_id = params[:user_id]


    if @meeting.save
      redirect_to "/meetings", :notice => "Meeting created successfully."
    else
      render 'new'
    end
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])

    @meeting.contact_id = params[:contact_id]
    @meeting.event_id = params[:event_id]
    @meeting.user_id = params[:user_id]

    if @meeting.save
      redirect_to "/meetings", :notice => "Meeting updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @meeting = Meeting.find(params[:id])

    @meeting.destroy

    redirect_to "/meetings", :notice => "Meeting deleted."
  end
end
