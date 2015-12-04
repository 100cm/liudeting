class ChangeTimeColumnToEuqip < ActiveRecord::Migration
  def change

    change_column :equipment ,:borrow_time ,:date
    change_column :equipment ,:return_time,:date
  end
end
