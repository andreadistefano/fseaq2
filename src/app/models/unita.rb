class Unita < ActiveRecord::Base
  belongs_to :branca
  has_many   :soci
  has_many   :capi,  :class_name => "Socio"
  has_and_belongs_to_many :notizie
end
