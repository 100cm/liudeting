class AddRepairToEquipment < ActiveRecord::Migration
  def change

    add_column :equipment,:is_reparied,:boolean
    add_column :equipment ,:is_damaged,:boolean
  end
end
