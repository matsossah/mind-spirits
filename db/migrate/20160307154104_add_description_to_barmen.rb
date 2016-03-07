class AddDescriptionToBarmen < ActiveRecord::Migration
  def change
    add_column :barmen, :description, :string
  end
end
