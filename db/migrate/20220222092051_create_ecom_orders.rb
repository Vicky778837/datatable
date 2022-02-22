class CreateEcomOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :ecom_orders do |t|
      t.float :price
      t.string :itek_sku
      t.datetime :purchase_date
      t.string :platform_order_num
      t.string :sales_channel
      t.string :status
      t.string :customer_name
      t.string :customer_state
      t.datetime :shipped_at
      t.integer :num_items_shipped
      t.string :payment_method

      t.timestamps
    end
  end
end
