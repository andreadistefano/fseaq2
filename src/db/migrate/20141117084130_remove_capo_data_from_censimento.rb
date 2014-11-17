class RemoveCapoDataFromCensimento < ActiveRecord::Migration
  def change
  	remove_column :censimento, :unita_servizio, :integer
  	remove_column :censimento, :capo, :integer
  	remove_column :censimento, :unita_servizio_id, :integer
  end
end
