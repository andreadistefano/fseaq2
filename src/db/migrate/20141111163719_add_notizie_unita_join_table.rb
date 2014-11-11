class AddNotizieUnitaJoinTable < ActiveRecord::Migration
  def self.up
    create_table :notizia_unita, :id => false do |t|
      t.integer :notizia_id
      t.integer :unita_id
    end
  end
  def self.down
    drop_table :notizia_unita
  end
end
