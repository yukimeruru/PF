class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :member_id, null: false
      t.integer :item_id, null: false
      t.text :order_comment, null: false
      t.integer :comment_status, null: false

      t.timestamps
    end
  end
end
