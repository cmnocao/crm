class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :item
      t.decimal :total
      t.integer :invoice

      t.timestamps
    end
  end
end
