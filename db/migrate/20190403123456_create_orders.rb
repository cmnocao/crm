class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string  :item
      t.decimal :total
      t.integer :invoice
      t.string  :postage_method
      t.decimal :postage_price
      t.text    :order_comment
      t.integer :customer_id
      t.integer :address_id

      t.timestamps
    end
  end
end
