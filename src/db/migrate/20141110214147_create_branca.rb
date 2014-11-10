class CreateBranca < ActiveRecord::Migration
  def change
    create_table :branca do |t|
      t.string :nome
      t.string :nomeUnita
      t.string :descrizione

      t.timestamps
    end
  end
end
