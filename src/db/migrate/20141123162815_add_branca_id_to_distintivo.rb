class AddBrancaIdToDistintivo < ActiveRecord::Migration
  def change
    add_column :distintivo, :branca_id, :integer
  end
end
