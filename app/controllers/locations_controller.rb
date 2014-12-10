class LocationsController < ApplicationController
  def index
    @locations = Location.order(:city)
  end

  def show
    @location = Location.find(params[:id])

    require 'open-uri'
    require 'json'
    require 'openssl'

    @safe_url = URI.encode(@location.city)
    @url_we_want = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@safe_url}"
    @raw_data= open(@url_we_want).read
    @parsed_data=JSON.parse(@raw_data)
    @lat=@parsed_data["results"][0]["geometry"]["location"]["lat"]
    @lng=@parsed_data["results"][0]["geometry"]["location"]["lng"]
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new
    @location.city = params[:city]

    if @location.save
      redirect_to "/locations", :notice => "Location created successfully."
    else
      render 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])

    @location.city = params[:city]

    if @location.save
      redirect_to "/locations", :notice => "Location updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])

    @location.destroy

    redirect_to "/locations", :notice => "Location deleted."
  end
end
