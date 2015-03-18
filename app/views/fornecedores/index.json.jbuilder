json.array!(@fornecedores) do |fornecedor|
  json.extract! fornecedor, :id, :nome, :cnpj, :razao_social, :endereco_id, :situacao, :usuario_id
  json.url fornecedor_url(fornecedor, format: :json)
end
