class Unita < ActiveRecord::Base
  belongs_to :branca
  has_many   :soci
  has_many   :capi,  :class_name => "Socio"
  has_and_belongs_to_many :notizie

  validates :nome, presence: true

  extend FriendlyId
  friendly_id :nome, use: :slugged

  def nome_completo
  	return branca.nome_unita + " " + nome
  end
end
