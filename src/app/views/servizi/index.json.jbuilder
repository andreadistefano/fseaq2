json.array!(@servizi) do |servizio|
  json.extract! servizio, :id, :socio_id, :unita_id, :capo, :anno
  json.url servizio_url(servizio, format: :json)
end
