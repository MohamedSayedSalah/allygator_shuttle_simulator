Rails.application.routes.draw do
  # resources :locations
  # resources :vehicles
  root to:  'vehicles#index'
  post '/vehicles', to: 'vehicles#create', as: 'create_vehicle'
  post '/vehicles/:id/locations', to: 'locations#create', as: 'create_location'
  get '/all_vehicles_locations', to: 'locations#all_vehicles_locations', as: 'all_vehicles_locations'
  delete '/vehicles/:id', to: 'vehicles#destroy' , as: 'destroy'
  delete '/locations/reset', to: 'locations#reset' , as: 'reset'

end
