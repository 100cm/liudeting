class AddIsRepairingEquipment < ActiveRecord::Migration
  def change

    add_column :equipment,:is_repairing,:boolean ,:default => false
  end
end
