Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "sugar")
Ingredient.create(name: "coffee")
Ingredient.create(name: "vodka")
Ingredient.create(name: "bourbon")
Ingredient.create(name: "orange zests")


cocktail = Cocktail.new(
  name: "Tequila Sunrise",
  image: "tequila.jpg"
)
cocktail.save

cocktail1 = Cocktail.new(
  name: "White Russian",
  image: "white_russian.jpg"
)
cocktail1.save

cocktail2 = Cocktail.new(
  name: "Martini",
  image: "martini.jpeg"
)
cocktail2.save
