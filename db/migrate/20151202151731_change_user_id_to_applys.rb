class ChangeUserIdToApplys < ActiveRecord::Migration
  def change

    change_column :applies,:user_id ,:string
  end
end
