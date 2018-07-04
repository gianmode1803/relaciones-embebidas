class CoachTeamNn
  include Mongoid::Document
  belongs_to :coach
  belongs_to :team
end
