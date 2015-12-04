class AddLevelToEquipment < ActiveRecord::Migration
  def change

    add_column :equipment ,:level,:text
    add_column :equipment ,:price,:string
    add_column :equipment ,:repair_price,:string
    add_column :equipment ,:damage_price,:string
    add_column :equipment ,:damage_user_id,:integer
    add_column :equipment ,:borrow_user_id,:integer
    add_column :equipment ,:borrow_user_name,:string


  end
end
