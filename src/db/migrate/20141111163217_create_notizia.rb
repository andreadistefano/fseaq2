class CreateNotizia < ActiveRecord::Migration
  def change
    create_table :notizia do |t|
      t.string :title
      t.string :text
      t.string :string

      t.timestamps
    end
  end
end
