class ChangeIsFailedToApplys < ActiveRecord::Migration
  def change

    change_column :applies ,:is_failed,:boolean,:default => false
  end
end
