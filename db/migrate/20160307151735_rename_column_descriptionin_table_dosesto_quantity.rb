class RenameColumnDescriptioninTableDosestoQuantity < ActiveRecord::Migration
  def change
    rename_column :doses, :description, :quantity
  end
end
