class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.string :city
      t.string :postcode
      t.string :country
      t.string :address_type
      t.string :address_comment
      t.integer :customer_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
