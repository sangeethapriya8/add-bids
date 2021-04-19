Rails.application.routes.draw do
	root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  	resources :users do
  		resources :projects do
        resources :bids
      end
  	end
  	get '/login', to:'sessions#login'
  	post '/login', to: 'sessions#create'
  	post '/logout', to: 'sessions#destroy'
  	get '/logout', to: 'sessions#destroy' 

  	

end
