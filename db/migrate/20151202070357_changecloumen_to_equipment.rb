class ChangecloumenToEquipment < ActiveRecord::Migration
  def change

    change_column :equipment,:is_damaged,:boolean,:default => false
    change_column :equipment,:is_reparied,:boolean,:default => false

  end
end
