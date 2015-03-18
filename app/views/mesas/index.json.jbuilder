json.array!(@mesas) do |mesa|
  json.extract! mesa, :id, :situacao
  json.url mesa_url(mesa, format: :json)
end
