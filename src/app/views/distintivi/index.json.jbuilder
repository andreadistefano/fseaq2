json.array!(@distintivi) do |distintivo|
  json.extract! distintivo, :id, :nome
  json.url distintivo_url(distintivo, format: :json)
end
