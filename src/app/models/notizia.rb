class Notizia < ActiveRecord::Base
  has_and_belongs_to_many :unita
  validates	:title, presence: true
  validates	:text,  presence: true
end
