class RemoveStringFromNotizia < ActiveRecord::Migration
  def change
    remove_column :notizia, :string, :string
  end
end
