class PagesController < ApplicationController

  def diana
    @dianaf = Contact.first[:first_name]
    @dianal = Contact.first[:last_name]
    @diana_em = Contact.first[:email]
    @diana_ph = Contact.first[:phone_number]
  end

  def index
    @contacts = Contact.all
  end

  def new
    @new_contact = Contact.new
  end

  def create
    # coordinates = Geocoder.coordinates(params[:address])
    # latitude = coordinates[0]
    # longitude = coordinates[1]
    @new_contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
    if @new_contact.save
      flash[:success] = "New Contact Created!"
      redirect_to "/contacts"
    else
      render :new
    end
    def show
      id = params[:id]
      @contact = Contact.find_by(id: id)
    end


    # redirect_to "/contacts"
  end

end
