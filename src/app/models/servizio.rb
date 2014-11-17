class Servizio < ActiveRecord::Base
  belongs_to :socio
  belongs_to :unita

  validates :anno,	presence: true
  validates :socio, uniqueness: {scope: [:anno, :unita]}
  validates :capo, 	uniqueness: {scope: [:anno, :unita]}, if: :capo
  validate :socio_censito

  def socio_censito
  	if socio.censimenti.anno(anno).empty?
  		errors.add(:anno, "Socio non censito!")
  	end
  end
end