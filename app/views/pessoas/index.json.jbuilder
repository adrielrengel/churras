json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :endereco_id, :situacao, :usuario_id
  json.url pessoa_url(pessoa, format: :json)
end
