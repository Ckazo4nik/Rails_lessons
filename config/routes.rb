Rails.application.routes.draw do
  resources :cars
  resources :trains
  resources :railway_stations
  resources :routes
  root "railway_stations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
