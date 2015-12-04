class AddIsFailedToApplys < ActiveRecord::Migration
  def change

    add_column :applies,:is_failed,:boolean
  end
end
