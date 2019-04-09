class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :city
      t.string :country
      t.string :address_type
      t.string :postcode
      t.integer :customer_id

      t.timestamps
    end
  end
end
