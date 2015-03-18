json.array!(@tipo_contatos) do |tipo_contato|
  json.extract! tipo_contato, :id, :nome, :usuario_id
  json.url tipo_contato_url(tipo_contato, format: :json)
end
