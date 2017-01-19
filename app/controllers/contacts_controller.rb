class ContactsController < ApplicationController

def display
  @contacts = Contact.all
  p @contacts
  render 'contacts.html.erb'
end


end
