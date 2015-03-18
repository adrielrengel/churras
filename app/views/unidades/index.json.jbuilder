json.array!(@unidades) do |unidade|
  json.extract! unidade, :id, :nome, :usuario_id
  json.url unidade_url(unidade, format: :json)
end
