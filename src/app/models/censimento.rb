class Censimento < ActiveRecord::Base
  belongs_to :socio, inverse_of: :censimenti
  belongs_to :unita
  belongs_to :unita_servizio,
  						class_name: "Unita",
  						foreign_key: "unita_servizio_id"

  validates :socio, uniqueness: { scope: :anno }
  validates :capo_gruppo, uniqueness: { scope: :anno }, if: :capo_gruppo
  validates :vice_capo_gruppo, uniqueness: { scope: :anno }, if: :vice_capo_gruppo

  scope :anno, ->(a=AnnoScout.current.to_i) { where(anno: a) }
end
