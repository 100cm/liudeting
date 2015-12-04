class AddUserNameToApply < ActiveRecord::Migration
  def change

    add_column :equipment,:user_name,:string
  end
end
