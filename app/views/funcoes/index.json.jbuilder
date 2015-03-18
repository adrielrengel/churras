json.array!(@funcoes) do |funcao|
  json.extract! funcao, :id, :nome
  json.url funcao_url(funcao, format: :json)
end
