Rails.application.routes.draw do
  resources :locations
  resources :vehicles
  root to:  'vehicles#index'
  post '/vehicles', to: 'vehicles#create', as: 'create_vehicle'
  post '/vehicles/:id/locations', to: 'locations#create', as: 'create_location'
  get '/all_vehicles_locations', to: 'locations#all_vehicles_locations', as: 'all_vehicles_locations'
  delete '/destroy_locations', to: 'locations#destroy_all'
  delete '/vehicles/:id' , to: 'vehicle#destroy' , as: 'destroy'


end
