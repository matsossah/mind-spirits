class ChangeEventPrice < ActiveRecord::Migration
  def change
    change_column :events, :price_cents, :integer, :default => 5000
  end
end
