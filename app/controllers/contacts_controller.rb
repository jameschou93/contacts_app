class ContactsController< ApplicationController

def index
  @contact = Contact.all
  
end

def new
  
end

def create
  @contact = Contact.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])

end
def edit
  @contact = Contact.find_by(id: params[:id])
  render 'edit.html.erb'
end

def update
  @contact = Contact.find_by(id: params[:id])
  @contact.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
  render 'update.html.erb'
  @contact.save
end

def show
  @contact = Contact.find_by(id: params[:id])
end

def destroy
  @contact = Contact.find_by(id: params[:id])
  @contact.delete
  render 'destroy.html.erb'
end
end
