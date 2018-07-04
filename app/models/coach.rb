class Coach
  include Mongoid::Document
  field :nombre, type: String
  field :apellido, type: String
  field :ciudad_nacimiento, type: String

  has_many :coach_team_nns
end
