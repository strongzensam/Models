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
  end

  def create
    @new_contact = Contact.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
    redirect_to "/contacts"
  end

end
