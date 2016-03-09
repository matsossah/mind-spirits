class DropBarmenTable < ActiveRecord::Migration
  def change
    drop_table :barmen, force: :cascade
  end
end
