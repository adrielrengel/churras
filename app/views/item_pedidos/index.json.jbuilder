json.array!(@item_pedidos) do |item_pedido|
  json.extract! item_pedido, :id, :estoque_id, :valor, :situacao, :horario_pedido, :pedido_id, :usuario_id
  json.url item_pedido_url(item_pedido, format: :json)
end
