json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :pessoa_id, :tipo, :usuario_id
  json.url cliente_url(cliente, format: :json)
end
