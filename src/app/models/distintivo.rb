class Distintivo < ActiveRecord::Base
	validates :livello, uniqueness: {scope: :branca}, unless: :specialita
end
