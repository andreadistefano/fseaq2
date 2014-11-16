class AddSlugToSocio < ActiveRecord::Migration
  def change
    add_column :socio, :slug, :string, unique: true
  end
end
