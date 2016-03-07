class ChangeRecipeStepsToText < ActiveRecord::Migration
  def change
    change_column :cocktails, :recipe_steps, :text
  end
end
