class AddIsBorrowedToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment,:is_borrowed,:boolean,default: false
  end
end
