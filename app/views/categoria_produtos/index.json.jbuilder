json.array!(@categoria_produtos) do |categoria_produto|
  json.extract! categoria_produto, :id, :nome, :situacao, :usuario_id
  json.url categoria_produto_url(categoria_produto, format: :json)
end
