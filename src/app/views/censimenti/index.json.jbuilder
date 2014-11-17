json.array!(@censimenti) do |censimento|
  json.extract! censimento, :id, :anno, :socio_id, :unita_id, :unita_servizio_id, :capo, :capo_gruppo, :vice_capo_gruppo
  json.url censimento_url(censimento, format: :json)
end
