Rails.application.routes.draw do
  # resources :restaurant_pizas
  # resources :pizzas
  # resources :restaurants, only: [:index, :show, :destroy]


  # RESTAURANTS 

  get '/restaurants', to: 'restaurants#index'

  get '/restaurants/:id', to: 'restaurants#show'

  delete '/restaurants/:id', to: 'restaurants#destroy'


  # PIZZA 
  get '/pizzas', to: 'pizzas#index'

  # RESTAURANT PIZZA 
  get '/restaurant_pizzas', to: 'restaurant_pizas#index'
  post '/restaurant_pizzas', to: 'restaurant_pizas#create'

 
end
