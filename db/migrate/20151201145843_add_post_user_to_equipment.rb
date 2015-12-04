class AddPostUserToEquipment < ActiveRecord::Migration
  def change

    add_column :equipment ,:post_user_name,:string
    add_column :equipment ,:post_user_id ,:string
  end
end
