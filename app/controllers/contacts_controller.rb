class ContactsController < ApplicationController

def display
  @contacts = Contact.all
  p @contacts
  render 'contacts.html.erb'
end

def form
  
end

def result
  @contact = Contact.create(first_name: params[:input_first_name], last_name: params[:input_last_name], email: params[:input_email], phone_number: params[:input_phone_number])

end

end
