class AddIsConfirmedToEvent < ActiveRecord::Migration
  def change
    add_column :events, :is_confirmed, :boolean, default: false
    change_column_null :events, :is_confirmed, false
  end
end
