class AddAlcoholTypeToCocktails < ActiveRecord::Migration
  def change
    add_column :cocktails, :alcohol, :string
  end
end
