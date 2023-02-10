Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'flights#index'
  resources :flights, only: [:index]
  resources :bookings, only: [:new, :create, :show] do
    collection do
      get 'search'
    end
  end
end
