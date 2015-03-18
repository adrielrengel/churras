json.array!(@ruas) do |rua|
  json.extract! rua, :id, :nome, :cidade_id, :usuario_id
  json.url rua_url(rua, format: :json)
end
