json.array!(@unita) do |unita|
  json.extract! unita, :id, :nome, :branca_id
  json.url unita_url(unita, format: :json)
end
