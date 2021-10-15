class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :payment_method
      t.integer :postage
      t.integer :billing_amount
      t.integer :is_active
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
