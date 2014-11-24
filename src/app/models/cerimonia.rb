class Cerimonia < ActiveRecord::Base
  belongs_to :socio
  belongs_to :distintivo

  validate :socio_censito_in_branca

  def socio_censito_in_branca
    anno = AnnoScout.new(data).to_i
    if socio.censimenti.anno(anno).empty? or
      socio.censimenti.anno(anno).first.unita.branca != distintivo.branca
      errors.add(:anno, "Socio non censito in questa branca!")
    end
  end
end
