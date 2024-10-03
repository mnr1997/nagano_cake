class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|

      t.bigint :order_id, null: false
      t.bigint :item_id, null: false
      t.integer :price, null: false
      t.integer :amount, null: false
      t.integer :making_status, null: false
      t.timestamps
    end
  end
end
