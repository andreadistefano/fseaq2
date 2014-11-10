class Unita < ActiveRecord::Base
  belongs_to :branca
  has_many   :soci
  has_many   :capi,  :class_name => "Socio"
end
