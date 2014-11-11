json.array!(@notizie) do |notizia|
  json.extract! notizia, :id
  json.url notizia_url(notizia, format: :json)
end
