class AddLivelloSpecialitaToDistintivo < ActiveRecord::Migration
  def change
  	add_column :distintivo, :livello, :integer
  	add_column :distintivo, :specialita, :boolean
  end
end
