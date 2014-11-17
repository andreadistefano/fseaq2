class Socio < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def email_required?
    false
  end

  def email_changed?
    false
  end

  def nome_completo
    return nome + " " + cognome
  end

  has_many :censimenti, inverse_of: :socio

  # Validazione
  validate :nome,     presence: true
  validate :cognome,  presence: true
  validate :username, presence: true

  # Friendly_id
  extend FriendlyId
  friendly_id :username, use: :slugged
end