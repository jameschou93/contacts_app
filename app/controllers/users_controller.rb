class UsersController < ApplicationController

  def new
    
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
         )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "New Login Created"
      redirect_to "/signup"
    else 
      flash[:warning] = "Invalid email or password"
      redirect_to "/signup"
    end
  end

end
