class CreateServizio < ActiveRecord::Migration
  def change
    create_table :servizio do |t|
      t.references :socio, index: true
      t.references :unita, index: true
      t.boolean :capo
      t.integer :anno

      t.timestamps
    end
  end
end
