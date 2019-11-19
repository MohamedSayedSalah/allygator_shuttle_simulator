class Vehicle
  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :locations
  accepts_nested_attributes_for :locations
end
