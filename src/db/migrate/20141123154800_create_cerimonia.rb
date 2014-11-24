class CreateCerimonia < ActiveRecord::Migration
  def change
    create_table :cerimonia do |t|
      t.references :socio, index: true
      t.references :distintivo, index: true
      t.date :data

      t.timestamps
    end
  end
end
