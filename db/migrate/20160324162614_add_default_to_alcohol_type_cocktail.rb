class AddDefaultToAlcoholTypeCocktail < ActiveRecord::Migration
  def change
    change_column :cocktails, :alcohol_type, :string, :default => ""
  end
end
