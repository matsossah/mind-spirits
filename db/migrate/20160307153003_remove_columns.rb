class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :users, :name
  end
end
