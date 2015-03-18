json.array!(@formas_pagamento) do |forma_pagamento|
  json.extract! forma_pagamento, :id, :nome, :situacao, :usuario_id
  json.url forma_pagamento_url(forma_pagamento, format: :json)
end
