require "rails_helper"
RSpec.describe VehiclesController, type: :controller do
    it "should create new vehilce" do
      post :create, params: {id: "uuid"}
      expect(response.status).eql?(200)
    end

    it "shoud display all vehicles" do
      get :index
      id = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
      Vehicle.create(id: id)
      expect(response.status).eql?(204)
      expect(Vehicle.last.id).eql?(id)
    end

end