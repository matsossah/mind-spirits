class AddPriceToEvent < ActiveRecord::Migration
  def change
    add_monetize :events, :price, amount: { null: false, default: 50 }
  end
end
