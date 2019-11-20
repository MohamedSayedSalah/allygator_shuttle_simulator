class LocationsController < ApplicationController
  before_action :set_vehicle, only: [:create]
  before_action :location_params, only: [:create]

  # no need to protect against cross site scripting for now
  protect_from_forgery with: :null_session

  # display all vehicles last locations
  # it runs much faster using mongoDB compared to relational database
  def all_vehicles_locations
    @vehicles_last_location = {}
    @locations = Vehicle.all.map { |vehicle| @vehicles_last_location[vehicle.id] = vehicle.locations.last ?
                                                                                       {lat: vehicle.locations.last.lat, lng: vehicle.locations.last.lng} : {} }
    render json: @vehicles_last_location
  end

  # POST /locations
  def create
    @vehicle.locations << Location.new(lng: params[:location][:lng],
                                       lat: params[:location][:lat],
                                       at: params[:location][:at])
    @vehicle.save!
  end


  def reset
    Vehicle.all.map{|vehicle| vehicle.locations.destroy_all}
    Vehicle.destroy_all
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:lat, :lng, :at)
  end
end
