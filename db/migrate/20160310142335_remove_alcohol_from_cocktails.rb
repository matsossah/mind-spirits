class RemoveAlcoholFromCocktails < ActiveRecord::Migration
  def change
    remove_column :cocktails, :alcohol
  end
end
