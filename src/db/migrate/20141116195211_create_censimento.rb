class CreateCensimento < ActiveRecord::Migration
  def change
    create_table :censimento do |t|
      t.integer :anno
      t.references :socio, index: true
      t.references :unita, index: true
      t.references :unita_servizio, index: true
      t.boolean :capo
      t.boolean :capo_gruppo
      t.boolean :vice_capo_gruppo

      t.timestamps
    end
  end
end
