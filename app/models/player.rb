class Player
  #include Mongoid::Attributes::Dynamic
  include Mongoid::Document


  field :nombre, type: String
  field :apellido, type: String
  field :ciudad_nacimiento, type: String
  field :posicion, type: String
  field :dorsal, type: String

  belongs_to :team, optional: true
  embeds_many :languages
end
