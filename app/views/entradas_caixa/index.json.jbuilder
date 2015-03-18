json.array!(@entradas_caixa) do |entrada_caixa|
  json.extract! entrada_caixa, :id, :pedido_id, :forma_pagamento_id, :valor, :observacao, :usuario_id
  json.url entrada_caixa_url(entrada_caixa, format: :json)
end
