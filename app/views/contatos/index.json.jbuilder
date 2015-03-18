json.array!(@contatos) do |contato|
  json.extract! contato, :id, :tipo_contato_id, :contato, :contatavel_id, :contatavel_type, :usuario_id
  json.url contato_url(contato, format: :json)
end
