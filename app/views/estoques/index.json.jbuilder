json.array!(@estoques) do |estoque|
  json.extract! estoque, :id, :saida_caixa_id, :produto_id, :quantidade_comprada, :quantidade_atual, :valor, :unidade_id, :fornecedor_id, :usuario_id
  json.url estoque_url(estoque, format: :json)
end
