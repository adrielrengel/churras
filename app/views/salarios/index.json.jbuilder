json.array!(@salarios) do |salario|
  json.extract! salario, :id, :funcionario_id, :valor, :saida_caixa_id, :usuario_id
  json.url salario_url(salario, format: :json)
end
