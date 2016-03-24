class AddAlcoholTypeToCocktail < ActiveRecord::Migration
  def change
    add_column :cocktails, :alcohol_type, :string
  end
end
