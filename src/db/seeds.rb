# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Unita.delete_all
Branca.delete_all
Distintivo.delete_all

Unita.reset_pk_sequence
Branca.reset_pk_sequence
Distintivo.reset_pk_sequence

b = Branca.create([
  {nome: "Lupetti",      nome_unita: "Branco"},
  {nome: "Esploratori",  nome_unita: "Riparto"},
  {nome: "Rover",        nome_unita: "Clan"},
  {nome: "Coccinelle",   nome_unita: "Cerchio"},
  {nome: "Guide",        nome_unita: "Riparto"},
  {nome: "Scolte",       nome_unita: "Fuoco"}
  ])
unita = Unita.create([
  {nome: "Waingunga",            branca: b[0]},
  {nome: "San Cesidio da Fossa", branca: b[1]},
  {nome: "Antonello Angelini",   branca: b[2]},
  {nome: "La Quercia Amica",     branca: b[3]},
  {nome: "Turkana",              branca: b[4]},
  {nome: "Santa Chiara",         branca: b[5]}
  ])
distintivi = Distintivo.create([
  # lupetti
  {nome: "Promessa",       livello: 0, branca: b[0], specialita: false},
  {nome: "Prima Stella",   livello: 1, branca: b[0], specialita: false},
  {nome: "Seconda Stella", livello: 2, branca: b[0], specialita: false},
  {nome: "Lupo Anziano",   livello: 3, branca: b[0], specialita: false},
  #Coccinelle
  {nome: "Promessa", livello: 0, branca: b[3], specialita: false},
  {nome: "Mughetto", livello: 1, branca: b[3], specialita: false},
  {nome: "Genziana", livello: 2, branca: b[3], specialita: false},
  # Esploratori
  {nome: "Promessa",           livello: 0, branca: b[1], specialita: false},
  {nome: "Seconda Classe",     livello: 1, branca: b[1], specialita: false},
  {nome: "Prima Classe",       livello: 2, branca: b[1], specialita: false},
  {nome: "Esploratore Scelto", livello: 3, branca: b[1], specialita: false},
  # Guide
  {nome: "Promessa",       livello: 0, branca: b[4], specialita: false},
  {nome: "Seconda Classe", livello: 1, branca: b[4], specialita: false},
  {nome: "Prima Classe",   livello: 2, branca: b[4], specialita: false},
  # Rover
  {nome: "Novizio Rover",  livello: 0, branca: b[2], specialita: false},
  {nome: "Rover",          livello: 1, branca: b[2], specialita: false},
  {nome: "Partenza",       livello: 2, branca: b[2], specialita: false},
  # Scolte
  {nome: "Scolta Semplice",  livello: 0, branca: b[5], specialita: false},
  {nome: "Scolta Viandante", livello: 1, branca: b[5], specialita: false},
  {nome: "Partenza",         livello: 2, branca: b[5], specialita: false}
  # TODO tutte le specialità
  ])