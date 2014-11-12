class Socio < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def email_required?
    false
  end

  def email_changed?
    false
  end
  
  validate :nome,     presence: true
  validate :cognome,  presence: true
end