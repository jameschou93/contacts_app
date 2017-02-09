class ContactsController< ApplicationController

def index
  if current_user
    if params[:group]
      group = Group.find_by(name: params[:group])
      @contacts = group.contacts.where(user_id: current_user.id)
    else
      @contacts = Contact.where(user_id: current_user.id)
    end
  else
  redirect_to "/login"
  end  
end

def new
  @contact = Contact.new
end

def create
  address = params[:address]
  coordinates = Geocoder.coordinates(address)
  if coordinates
  longitude = coordinates[1]
  latitude = coordinates[0]
  else
  longitude = nil
  latitude = nil
  end
  @contact = Contact.new(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], address: params[:address], longitude: longitude, latitude: latitude, bio: params[:bio], user_id: current_user.id)
  if @contact.save
  redirect_to "/contacts/#{@contact.id}"
  else
  render "new.html.erb"
  end
end
def edit
  @contact = Contact.find_by(id: params[:id])
  render 'edit.html.erb'
end

def update
  address = params[:address]
  coordinates = Geocoder.coordinates(address)
  if coordinates
  longitude = coordinates[1]
  latitude = coordinates[0]
  else
  longitude = nil
  latitude = nil
  end
  @contact = Contact.find_by(id: params[:id])
  @contact.assign_attributes(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], address: params[:address], longitude: longitude, latitude: latitude, bio: params[:bio])
  if @contact.save
  redirect_to "/contacts/#{@contact.id}"
  else  
  render "edit.html.erb"
  end
end

def show
  @contact = Contact.find_by(id: params[:id])
end

def destroy
  @contact = Contact.find_by(id: params[:id])
  @contact.delete
  redirect_to "/"
end



end
