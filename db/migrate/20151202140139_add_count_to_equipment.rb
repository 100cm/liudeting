class AddCountToEquipment < ActiveRecord::Migration
  def change

    add_column :equipment,:count,:string
  end
end
