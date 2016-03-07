class AddNameToBarmen < ActiveRecord::Migration
  def change
    add_column :barmen, :name, :string
  end
end
