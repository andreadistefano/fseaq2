class Branca < ActiveRecord::Base
  has_many :unita,      inverse_of: :branca
  has_many :distintivi, inverse_of: :branca

  validates   :nome,       presence: true
  validates   :nome_unita, presence: true
end
