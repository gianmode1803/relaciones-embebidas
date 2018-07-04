class Country
  include Mongoid::Document
  field :nombre, type: String
  field :grupo, type: String

  has_many :players
end
