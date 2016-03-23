class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :state
      t.monetize :amount
      t.json :payment
      t.monetize :amount, currency: { present: false }

      t.timestamps null: false
    end
  end
end
