Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get 'contacts', to: 'contacts#display'
get 'form', to: 'contacts#form'
post 'result', to: 'contacts#result'

end
