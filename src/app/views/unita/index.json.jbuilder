json.array!(@unita) do |unita|
  json.extract! unita, :id, :nome, :branca_id
  json.url unita_url(unita, format: :json)
  json.branca @unita.branca.nome
  json.nome_unita @unita.branca.nome_unita
end
