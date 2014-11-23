class Distintivo < ActiveRecord::Base
	belongs_to :branca, inverse_of: :distintivi

	validates :livello, uniqueness: {scope: :branca}, unless: :specialita
end
