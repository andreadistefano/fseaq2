class Censimento < ActiveRecord::Base
  belongs_to :socio, inverse_of: :censimenti
  belongs_to :unita
  belongs_to :unita_servizio,
  						class_name: "Unita",
  						foreign_key: "unita_servizio_id"


  validates :capo_gruppo, uniqueness: {scope: :anno}, if: :capo_gruppo
  validates :vice_capo_gruppo, uniqueness: {scope: :anno}, if: :vice_capo_gruppo
  validates :capo, uniqueness: {scope: [:anno, :unita_servizio]}, if: :capo
end
