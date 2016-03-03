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

cocktail3 = Cocktail.new(
  name: "Blue lagoon",
  image: "blue_lagoon.jpg"
)
cocktail3.save

cocktail4 = Cocktail.new(
  name: "Purple devil",
  image: "purple.jpg"
)
cocktail4.save

cocktail5 = Cocktail.new(
  name: "Sex on the beach",
  image: "sex-on-the-beach.jpg"
)
cocktail5.save
