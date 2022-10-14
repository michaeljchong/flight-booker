Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "flights#index"
  get '/index', to: 'flights#index'
end
