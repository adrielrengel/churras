json.array!(@pessoa_fisicas) do |pessoa_fisica|
  json.extract! pessoa_fisica, :id, :cliente_id, :cpf, :usuario_id
  json.url pessoa_fisica_url(pessoa_fisica, format: :json)
end
