class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id, null:false
      t.string :name, null:false
      t.text :description, null:false
      t.string :image_id, null:false
      t.integer :item_status, null:false

      t.timestamps
    end
  end
end
