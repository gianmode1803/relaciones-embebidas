json.extract! player, :id, :nombre, :apellido, :ciudad_nacimiento, :posicion, :dorsal, :created_at, :updated_at
json.url player_url(player, format: :json)
