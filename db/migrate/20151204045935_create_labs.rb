class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|

      t.string :name
      t.string :user_id
      t.string :position
      t.text :info

      t.timestamps null: false
    end
  end
end
