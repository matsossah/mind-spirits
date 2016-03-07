class AddAddressToBarmen < ActiveRecord::Migration
  def change
    add_column :barmen, :address, :string
  end
end
