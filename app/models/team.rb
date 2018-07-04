class Team
  include Mongoid::Document
  field :nombre, type: String
  field :grupo, type: String

  has_many :players
  has_many :coach_team_nns

end
