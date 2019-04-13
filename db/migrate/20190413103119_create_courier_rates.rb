class CreateCourierRates < ActiveRecord::Migration[5.2]
  def change
    create_table :courier_rates do |t|
      t.string  :postcode
      t.decimal :price
      t.string  :vehicle

      t.timestamps
    end
  end
end
