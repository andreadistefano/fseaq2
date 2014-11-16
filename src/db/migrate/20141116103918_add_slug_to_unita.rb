class AddSlugToUnita < ActiveRecord::Migration
  def change
  	add_column :unita, :slug, :string, unique: true
  	add_index :unita, :nome, unique: true
  end
end
