json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :mesa_id, :cliente_id, :desconto, :usuario_id
  json.url pedido_url(pedido, format: :json)
end
