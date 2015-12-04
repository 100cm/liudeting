class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equipment_name
      t.string :return_time
      t.string :borrow_time

      t.timestamps null: false
    end
  end
end
