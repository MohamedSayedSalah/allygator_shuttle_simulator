class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [ :destroy]
  before_action :vehicle_params, only: [:create]
  protect_from_forgery with: :null_session

  # GET /vehicles
  def index
    @vehicles = Vehicle.all.pluck(:id)
  end

  # POST /vehicles
  def create
    @vehicle = Vehicle.find_or_create_by!(id:params[:id])
  end

  # DELETE /vehicles/:id
  # destroy all vehicles locations
  def destroy
    @vehicle.locations.destroy_all
  end

  private
  
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
  
  def vehicle_params
    params.require(:vehicle).permit(:id)
  end

end
