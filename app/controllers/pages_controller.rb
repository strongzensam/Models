class PagesController < ApplicationController

  def diana
    @dianaf = Contact.first[:first_name]
    @dianal = Contact.first[:last_name]
    @diana_em = Contact.first[:email]
    @diana_ph = Contact.first[:phone_number]
  end

  def contacts
    @contacts = Contact.all
  end

end
