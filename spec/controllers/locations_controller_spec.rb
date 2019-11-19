require 'rails_helper'
RSpec.describe LocationsController, type: :controller do
  before do
    uuid=(0...50).map { ('a'..'z').to_a[rand(26)] }.join
    @vehicle = Vehicle.create(:id => uuid)
  end

  it 'should create new location' do
    post :create , params: { id: @vehicle.id , :location => {"lat": 10.0, "lng": 20.0, "at": "2017-09-01T12:00:00Z" }}
    expect(response.status).eql?(200)
    expect(@vehicle.locations.count).eql?(1)

  end

end