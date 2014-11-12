class AddNomeCognomeToSocio < ActiveRecord::Migration
  def up
  	change_table :socio do |t|
  		t.string :nome
  		t.string :cognome
  	end
  end
  def down
  	change_table :socio do |t|
  		t.remove :nome, :cognome
  	end
  end
end
