class CreateCustomerStores < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_stores do |t|
      t.string :name

      t.timestamps
    end
  end
end
