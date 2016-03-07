class AddRecipeStepsToCocktails < ActiveRecord::Migration
  def change
    add_column :cocktails, :recipe_steps, :string
  end
end
