class AddInfoToEquipment < ActiveRecord::Migration
  def change


    add_column :equipment,:equipment_info,:text


  end
end
