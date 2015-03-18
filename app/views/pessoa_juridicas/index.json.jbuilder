json.array!(@pessoa_juridicas) do |pessoa_juridica|
  json.extract! pessoa_juridica, :id, :cliente_id, :cnpj, :razao_social, :usuario_id
  json.url pessoa_juridica_url(pessoa_juridica, format: :json)
end
