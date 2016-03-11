Dose.delete_all
Ingredient.delete_all
Cocktail.delete_all

lemon = Ingredient.create!(name: "Lemon")
sparkling_water = Ingredient.create(name: "Sparkling Water")
ice = Ingredient.create(name: "Ice")
mint_leaves = Ingredient.create(name: "Mint leaves")
sugar = Ingredient.create(name: "Sugar")
coffee = Ingredient.create(name: "Coffee")
vodka = Ingredient.create(name: "Vodka")
bourbon = Ingredient.create(name: "Bourbon")
orange_zests = Ingredient.create(name: "Orange zests")
lime = Ingredient.create(name: "Lime")
cane_sugar = Ingredient.create(name: "Cane sugar")
grapefruit = Ingredient.create(name: "Grapefruit")
pineapple = Ingredient.create(name: "Pineapple")
tea = Ingredient.create(name: "tea")
orange_juice = Ingredient.create(name: "Orange juice")
grenadine = Ingredient.create(name: "Grenadine")
tequila = Ingredient.create(name: "Tequila")
curacao = Ingredient.create(name: "Curacao")
rhum = Ingredient.create(name: "Rhum")
gin = Ingredient.create(name: "Gin")
kahlua = Ingredient.create(name: "Kahlúa")

# def upload_image(cocktail, image_string)
#   pi = ImageUploader.create!(:image => image)
#   pi.image.store!(File.open(File.join(Rails.root, image_string)))
#   cocktail.image = pi
#   cocktail.save!
# end



cocktail1 = Cocktail.new(
  name: "Mojito",
  image: "mojito.jpg",
  recipe_steps: "Place ice in beverage shaker then add in the rum, 8 broken up mint sprigs, lime juice and sugar. Shake well and serve over ice in a high ball glass. Top off each glass with a splash of club soda.
  Garnish each with a slice of lime and a sprig of mint."
)
cocktail1.save!

cocktail2 = Cocktail.new(
  name: "Gin Fizz",
  image: "ginfizz.jpg",
  recipe_steps: "Put gin, lemon juice and powdered sugar in a cocktail shaker filled with ice. Strain into a glass filled with ice. Add club soda, and then garnish with lemon slice."
)
cocktail2.save!

cocktail3 = Cocktail.new(
  name: "Blue lagoon",
  image: "blue_lagoon.jpg",
  recipe_steps: "Fill a highball glass with ice and pour in your vodka and curacao. Top the rest of the way with lemonade, and garnish with a wedge of lemon."
)
cocktail3.save!

cocktail4 = Cocktail.new(
  name: "Punch",
  image: "punch.jpg",
  recipe_steps: "In a punch bowl, mix together fruit punch, pineapple juice and ginger ale. "
)
cocktail4.save!

cocktail5 = Cocktail.new(
  name: "Tequila Sunrise",
  image: "tequila_sunrise.jpg",
  recipe_steps: "Pour the tequila into a highball glass filled with ice and top up with fresh orange juice. Pour the grenadine in down the side of the glass so that it sinks to the bottom.To serve, garnish with an orange slice and a maraschino cherry.
"
)
cocktail5.save!

cocktail6 = Cocktail.new(
  name: "White Russian",
  image: "white_russian.jpg",
  recipe_steps: "Fill a rocks glass with ice cubes. Add Kahlúa and Absolut Vodka, finish up with a cream layer."
)
cocktail6.save!

cocktail7 = Cocktail.new(
  name: "banner",
  image: "banner.jpeg",
  recipe_steps: "Place ice in beverage shaker then add in the rum, 8 broken up mint sprigs, lime juice and sugar. Shake well and serve over ice in a high ball glass. Top off each glass with a splash of club soda.
  Garnish each with a slice of lime and a sprig of mint."
)
cocktail1.save!

Dose.create(
  cocktail: cocktail1,
  ingredient_id: lime.id,
  quantity: '3 pieces'
)

Dose.create(
  cocktail: cocktail1,
  ingredient_id: rhum.id,
  quantity: '6 cl'
)

Dose.create(
  cocktail: cocktail1,
  ingredient_id: mint_leaves.id,
  quantity: '7'
)

Dose.create(
  cocktail_id: cocktail1,
  ingredient_id: sparkling_water.id,
  quantity: '12 cl'
)
Dose.create(
  cocktail_id: cocktail1,
  ingredient_id: cane_sugar.id,
  quantity: '2 pieces'
)

Dose.create(
  cocktail_id: cocktail2,
  ingredient_id: gin.id,
  quantity: '6 cl'
)

Dose.create(
  cocktail_id: cocktail2,
  ingredient_id: lemon.id,
  quantity: '6 cl'
)

Dose.create(
  cocktail_id: cocktail2,
  ingredient_id: cane_sugar.id,
  quantity: '2 pieces'
)

Dose.create(
  cocktail_id: cocktail2,
  ingredient_id: sparkling_water.id,
  quantity: '12 cl'
)
Dose.create(
  cocktail_id: cocktail3,
  ingredient_id: vodka.id,
  quantity: '4 cl'
)
Dose.create(
  cocktail_id: cocktail3,
  ingredient_id: curacao.id,
  quantity: '3 cl'
)

Dose.create(
  cocktail_id: cocktail3,
  ingredient_id: lemon.id,
  quantity: '2 pieces'
)

Dose.create(
  cocktail_id: cocktail4,
  ingredient_id: rhum.id,
  quantity: '10 cl'
)

Dose.create(
  cocktail_id: cocktail4,
  ingredient_id: cane_sugar.id,
  quantity: '5 pieces'
)

Dose.create(
  cocktail_id: cocktail4,
  ingredient_id: orange_juice.id,
  quantity: '10 cl'
)
Dose.create(
  cocktail_id: cocktail4,
  ingredient_id: pineapple.id,
  quantity: '10 cl'
)

Dose.create(
  cocktail_id: cocktail4,
  ingredient_id: grapefruit.id,
  quantity: '10 cl'
)

Dose.create(
  cocktail_id: cocktail4,
  ingredient_id: tea.id,
  quantity: '1 cl'
)
Dose.create(
  cocktail_id: cocktail5,
  ingredient_id: tequila,
  quantity: '10 cl'
)

Dose.create(
  cocktail_id: cocktail5,
  ingredient_id: orange_juice.id,
  quantity: '12 cl'
)

Dose.create(
  cocktail_id: cocktail5,
  ingredient_id: grenadine.id,
  quantity: '2 cl'
)

Dose.create(
  cocktail: cocktail6,
  ingredient_id: ice.id,
  quantity: '7 cl'
)

Dose.create(
  cocktail: cocktail6,
  ingredient_id: kahlua.id,
  quantity: '7 cl'
)

Dose.create(
  cocktail: cocktail6,
  ingredient_id: vodka.id,
  quantity: '7 cl'
)

User.create(
  first_name: "Greg",
  last_name: "Sion" ,
  password: "123456",
  email: "greg@famillesion.fr"
)
User.create(
  first_name: "Guillaume",
  last_name: "Caulier",
  password:'123456',
  email: "guillaume@famillesion.fr"
)
User.create(
  first_name: "Matéo",
  last_name: "Sossah",
  password:"123456",
  email: "mateo@famillesion.fr"
)

