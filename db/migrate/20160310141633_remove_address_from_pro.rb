class RemoveAddressFromPro < ActiveRecord::Migration
  def change
    remove_column :professionals, :address
  end
end
