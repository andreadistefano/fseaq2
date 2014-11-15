class Branca < ActiveRecord::Base
	has_many  :unita
  validates   :nome,       presence: true
  validates   :nome_unita, presence: true
end
