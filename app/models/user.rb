class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :phone_number, type: String
  field :device_id, type: String
  field :location, type: Array

  index( { location: "2d" }, { min: -200, max: 200 })


  has_and_belongs_to_many :groups
end
