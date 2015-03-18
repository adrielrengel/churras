json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :pessoa_id, :data_admissao, :data_demissao, :salario_base, :funcao_id, :usuario_id
  json.url funcionario_url(funcionario, format: :json)
end
