class Location
  include Mongoid::Document
  include Mongoid::Timestamps

  field :lat, type: BigDecimal
  field :lng, type: BigDecimal
  field :at, type: DateTime
  embedded_in :vehicle
end
