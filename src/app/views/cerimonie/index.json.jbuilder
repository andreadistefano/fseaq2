json.array!(@cerimonie) do |cerimonia|
  json.extract! cerimonia, :id, :socio_id, :distintivo_id, :data
  json.url cerimonia_url(cerimonia, format: :json)
end
