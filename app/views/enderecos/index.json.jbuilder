json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :rua_id, :numero, :complemento, :usuario_id
  json.url endereco_url(endereco, format: :json)
end
