class CreateDistintivo < ActiveRecord::Migration
  def change
    create_table :distintivo do |t|
      t.string :nome

      t.timestamps
    end
  end
end
