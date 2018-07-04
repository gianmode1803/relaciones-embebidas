class Language
  include Mongoid::Document
  field :nombre
  embedded_in :player
end
