json.array!(@saida_caixas) do |saida_caixa|
  json.extract! saida_caixa, :id, :data, :tipo, :observacao, :usuario_id
  json.url saida_caixa_url(saida_caixa, format: :json)
end
