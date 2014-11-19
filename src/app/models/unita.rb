class Unita < ActiveRecord::Base
  belongs_to 	:branca, inverse_of: :unita
  has_many 		:censimenti, inverse_of: :unita
  has_many 		:soci, through: :censimenti
  has_many    :servizi, inverse_of: :unita
  has_many 	:capi,
  	-> { where servizio: {capo: true } },
  	class_name: "Socio",
  	source: :socio,
  	through: :servizi
  has_many :aiuti,
  	-> { where servizio: { capo: [false, nil] } },
  	through: :servizi,
  	class_name: "Socio",
  	source: :socio
  has_and_belongs_to_many :notizie

  validates :nome, presence: true

  extend FriendlyId
  friendly_id :nome, use: :slugged

  def nome_completo
  	return branca.nome_unita + " " + nome
  end

  def staff(a = AnnoScout.current.to_i)
		return {
			# references() serve a poter effettuare il successivo where()
			"capo" => self.capi.references(:servizi).where(servizio:{anno: a}).first,
			"aiuti" => self.aiuti.references(:servizi).where(servizio:{anno: a})
		}
  end
end
