class AddReturnTimeToApplys < ActiveRecord::Migration
  def change

    add_column :applies,:return_time,:date
  end
end
