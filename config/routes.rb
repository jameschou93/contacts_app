Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'contacts#index'
get '/contacts', to: 'contacts#index'
get '/contacts/', to: 'contacts#new'
post '/contacts', to: 'contacts#create'
get '/contacts/:id/edit' , to: 'contacts#edit'
patch '/contacts/:id', to: 'contacts#update'
get '/contacts/:id', to: 'contacts#show'
delete '/contacts/:id', to: 'contacts#destroy'

end
