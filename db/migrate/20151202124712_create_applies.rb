class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|

      t.string :equip_id
      t.integer :user_id
      t.boolean :is_success ,default: false
      t.timestamps null: false
    end
  end
end
