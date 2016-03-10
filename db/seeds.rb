Dose.delete_all
Ingredient.delete_all
Cocktail.delete_all

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "sugar")
Ingredient.create(name: "coffee")
Ingredient.create(name: "vodka")
Ingredient.create(name: "bourbon")
Ingredient.create(name: "orange zests")


cocktail = Cocktail.new(
  name: "Tequila Sunrise",
  image: "tequila.jpg",
  recipe_steps: "Pour the voka in a shaker, add sugar, mint, and crushed ice"
)
cocktail.save!

cocktail1 = Cocktail.new(
  name: "White Russian",
  image: "white_russian.jpg",
  recipe_steps: "Pour the voka in a shaker, add sugar, mint, and crushed ice"
)
cocktail1.save!

cocktail2 = Cocktail.new(
  name: "Martini",
  image: "martini.jpeg",
  recipe_steps: "Pour the voka in a shaker, add sugar, mint, and crushed ice"
)
cocktail2.save!

cocktail3 = Cocktail.new(
  name: "Blue lagoon",
  image: "blue_lagoon.jpg",
  recipe_steps: "Pour the voka in a shaker, add sugar, mint, and crushed ice"
)
cocktail3.save!

cocktail4 = Cocktail.new(
  name: "Purple devil",
  image: "purple.jpg",
  recipe_steps: "Pour the voka in a shaker, add sugar, mint, and crushed ice"
)
cocktail4.save!

cocktail5 = Cocktail.new(
  name: "Sex on the beach",
  image: "sex-on-the-beach.jpg",
  recipe_steps: "Pour the voka in a shaker, add sugar, mint, and crushed ice"
)
cocktail5.save!
