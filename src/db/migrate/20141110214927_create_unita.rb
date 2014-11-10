class CreateUnita < ActiveRecord::Migration
  def change
    create_table :unita do |t|
      t.string :nome
      t.references :branca, index: true
      
      t.timestamps
    end
  end
end
