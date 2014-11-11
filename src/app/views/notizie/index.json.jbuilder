json.array!(@notizie) do |notizia|
  json.extract! notizia, :id, :title, :text
  json.url notizia_url(notizia, format: :json)
end
