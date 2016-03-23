class AddOrderRefToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :order, index: true, foreign_key: true
  end
end
