class FixNomeUnitaInBranca < ActiveRecord::Migration
  def change
    rename_column :branca, :nomeUnita, :nome_unita
  end
end
