json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :valor, :categoria_id, :unidade_id, :situacao, :usuario_id
  json.url produto_url(produto, format: :json)
end
