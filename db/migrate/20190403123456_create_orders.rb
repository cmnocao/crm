class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string  :item
      t.decimal :total
      t.integer :invoice
      t.string  :postage_method
      t.text  :comment
      t.integer :customer_id

      t.timestamps
    end
  end
end
