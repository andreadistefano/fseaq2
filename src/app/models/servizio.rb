class Servizio < ActiveRecord::Base
  belongs_to :socio, inverse_of: :servizi
  belongs_to :unita, inverse_of: :servizi

  validates :anno,	presence: true
  validates :socio, uniqueness: { scope: [:anno, :unita] }
  validates :capo, 	uniqueness: { scope: [:anno, :unita] }, if: :capo
  validate :socio_censito

  scope :anno, ->(a = AnnoScout.current.to_i) { where(anno: a) }
  
  def socio_censito
  	if socio.censimenti.anno(anno).empty?
  		errors.add(:anno, "Socio non censito!")
  	end
  end
end