class AddIsRequestedEuipment < ActiveRecord::Migration
  def change

  add_column :equipment,:is_requested,:boolean,:default => false
  add_column :equipment,:requested_people_id,:integer
  add_column :equipment ,:request_people_name,:string
  end
end
