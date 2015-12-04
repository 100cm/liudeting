class AddUserNameToApplys < ActiveRecord::Migration
  def change


    add_column :applies,:user_name,:string
  end
end
