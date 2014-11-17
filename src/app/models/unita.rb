class Unita < ActiveRecord::Base
  belongs_to 	:branca, inverse_of: :unita
  has_many 		:censimenti
  has_many 		:soci, through: :censimenti
  has_many    :servizi
  has_many 		:capi, through: :servizi, source: :socio

  has_and_belongs_to_many :notizie

  validates :nome, presence: true

  extend FriendlyId
  friendly_id :nome, use: :slugged

  def nome_completo
  	return branca.nome_unita + " " + nome
  end
end
