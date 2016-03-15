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
coco_cream = Ingredient.create(name: "Coco cream")
agave_syrup = Ingredient.create(name: "agave syrup")
lemon_juice = Ingredient.create(name: "lemon juice")
cachaca = Ingredient.create(name: "cachaca")
midori = Ingredient.create(name: "midori")
chambord = Ingredient.create(name:"chambord")
airelle_juice = Ingredient.create(name: "Airelle juice")


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
  name: "Sex on the beach",
  image: "sex-on-the-beach.jpg",
  recipe_steps: "Add all the ingredients to a shaker and fill with ice. Shake, and strain into a highball glass filled with fresh ice. Garnish with an orange wheel."
)
cocktail7.save!

cocktail8 = Cocktail.new(
  name: "Pina Colada",
  image: "Pina-Colada.jpg",
  recipe_steps: "Fill a shaker with ice cubes. Add rhum and coconut cream. Shake and strain into a chilled highball glass filled with ice cubes. Top off with pineapple juice. Garnish with fresh pineapple."
)
cocktail8.save!

cocktail9 = Cocktail.new(
  name: "Margarita",
  image: "margarita.jpg",
  recipe_steps: "In a shaker, combine the tequila, lime juice, agave syrup, and ice. Shake to combine the ingredients. Strain the mixture into a glass, garnish with lime and enjoy."
)
cocktail9.save!

cocktail10 = Cocktail.new(
  name: "Caïpirinha",
  image: "caipirinha.jpg",
  recipe_steps: "Crush sugar and lime wedges in bottom of glass. Add ice cubes then top off with Cachaca and a dash of club soda."
)
cocktail10.save!



Dose.create!(
  cocktail: cocktail1,
  ingredient_id: lime.id,
  quantity: '3 pieces'
)

Dose.create!(
  cocktail: cocktail1,
  ingredient_id: rhum.id,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail1,
  ingredient_id: mint_leaves.id,
  quantity: '7'
)

Dose.create!(
  cocktail: cocktail1,
  ingredient_id: sparkling_water.id,
  quantity: '12 cl'
)
Dose.create!(
  cocktail: cocktail1,
  ingredient_id: cane_sugar.id,
  quantity: '2 pieces'
)

Dose.create!(
  cocktail: cocktail2,
  ingredient_id: gin.id,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail2,
  ingredient_id: lemon.id,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail2,
  ingredient_id: cane_sugar.id,
  quantity: '2 pieces'
)

Dose.create!(
  cocktail: cocktail2,
  ingredient_id: sparkling_water.id,
  quantity: '12 cl'
)
Dose.create!(
  cocktail: cocktail3,
  ingredient_id: vodka.id,
  quantity: '4 cl'
)
Dose.create!(
  cocktail: cocktail3,
  ingredient_id: curacao.id,
  quantity: '3 cl'
)

Dose.create!(
  cocktail: cocktail3,
  ingredient_id: lemon.id,
  quantity: '2 pieces'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient_id: rhum.id,
  quantity: '10 cl'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient_id: cane_sugar.id,
  quantity: '5 pieces'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient_id: orange_juice.id,
  quantity: '10 cl'
)
Dose.create!(
  cocktail: cocktail4,
  ingredient_id: pineapple.id,
  quantity: '10 cl'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient_id: grapefruit.id,
  quantity: '10 cl'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient_id: tea.id,
  quantity: '1 cl'
)
Dose.create!(
  cocktail: cocktail5,
  ingredient_id: tequila.id,
  quantity: '10 cl'
)

Dose.create!(
  cocktail: cocktail5,
  ingredient_id: orange_juice.id,
  quantity: '12 cl'
)

Dose.create!(
  cocktail: cocktail5,
  ingredient_id: grenadine.id,
  quantity: '2 cl'
)

Dose.create!(
  cocktail: cocktail6,
  ingredient_id: ice.id,
  quantity: '7 cl'
)

Dose.create!(
  cocktail: cocktail6,
  ingredient_id: kahlua.id,
  quantity: '7 cl'
)

Dose.create!(
  cocktail: cocktail6,
  ingredient_id: vodka.id,
  quantity: '7 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient_id: vodka.id,
  quantity: '2 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient_id: midori.id,
  quantity: '2 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient_id: chambord.id,
  quantity: ' 2 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient_id: airelle_juice.id,
  quantity: ' 6 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient_id: pineapple.id,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail8,
  ingredient_id: rhum.id,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail8,
  ingredient_id: coco_cream.id,
  quantity: '4 cl'
)

Dose.create!(
  cocktail: cocktail8,
  ingredient_id: pineapple.id,
  quantity: '12 cl'
)

Dose.create!(
  cocktail: cocktail9,
  ingredient_id: tequila.id,
  quantity: ' 3,5 cl'
)

Dose.create!(
  cocktail: cocktail9,
  ingredient_id: lemon_juice.id,
  quantity: ' 1,5 cl'
)

Dose.create!(
  cocktail: cocktail9,
  ingredient_id: agave_syrup.id,
  quantity: ' 2 cl'
)

Dose.create!(
  cocktail: cocktail9,
  ingredient_id: ice.id,
  quantity: ' 5 cl'
)

Dose.create!(
  cocktail: cocktail10,
  ingredient_id: cachaca.id,
  quantity: ' 5 cl'
)

Dose.create!(
  cocktail: cocktail10,
  ingredient_id: sugar.id ,
  quantity: ' 2 pieces'
)

Dose.create!(
  cocktail: cocktail10,
  ingredient_id: lemon.id,
  quantity: ' 1 piece'
)

Dose.create!(
  cocktail: cocktail10,
  ingredient_id: ice.id,
  quantity: ' 5 cl'
)


u1 = User.create!(
  name: "Greg Sion",
  password: "12345678",
  email: "gregsion@mindspirits.fr"
)
u2 = User.create!(
  name: "Guillaume Caulier",
  password:'12345678',
  email: "guillaume@mindspirits.fr"
)
u3 = User.create!(
  name: "Matéo Sossah",
  password:"12345678",
  email: "mateo@mindspirits.fr"
)

u4 = User.create!(
  name: "Juliette Picard",
  password:"12345678",
  email: "juliette@mindspirits.fr"
)

u5 = User.create!(
  name: "Bob Dupont",
  password:"12345678",
  email: "bob@mindspirits.fr"
)

u6 = User.create!(
  name: "Jules Grammont",
  password:"12345678",
  email: "jules@mindspirits.fr"
)

u7 = User.create!(
  name: "Catherine Dumont",
  password:"12345678",
  email: "catherine@mindspirits.fr"
)

u8 = User.create!(
  name: "Romain Cuvelier",
  password:"12345678",
  email: "romain@mindspirits.fr"
)

u9 = User.create!(
  name: "Sylvie Bernard",
  password:"12345678",
  email: "sylvie@mindspirits.fr"
)

u10 = User.create!(
  name: "Marie Joly",
  password:"12345678",
  email: "marie@mindspirits.fr"
)

p1 = Professional.create!(
  user: u1,
  description: "5 years expériences in a bar in London. My favorite cocktail is Mojito",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "12 Rue Solférino, Lille, France"
  )

p2 = Professional.create!(
  user: u2,
  description: "I studied and work in the best bar in New York during 20 years.",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "165 Rue nationale, Lille, France"
  )

p3 = Professional.create!(
  user_id: u3,
  description: "I worked with the most famous barman in the world. I will be glad to work for you",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "23 Rue Léonard Danel, Lille, France"
  )

p4 = Professional.create!(
  user_id: u4,
  description: "I'm new in the barman profession, i just have finish my studies.",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "66 Rue Masséna, Lille, France"
  )

p5 = Professional.create!(
  user_id: u5,
  description: "My specialities : Mojito and Margarita cocktail : the best cocktail you never drink !!",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "45 Rue de Paris, Lille, France"
  )

p6 = Professional.create!(
  user_id: u6,
  description: " 8 years expériences in Paris",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "26 Rue de la Clef, Lille, France"
  )

p7 = Professional.create!(
  user_id: u7,
  description:" 3 years expérience in the South of France",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "125 Rue des Postes, Lille, France"
  )

p8 = Professional.create!(
  user_id: u8,
  description: "10 years experience working in nightclub",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "12 Rue de Gand, Lille, France"
  )

p9 = Professional.create!(
  user_id: u9,
  description: "New barman",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "78 Boulevard Louis XIV, Lille, France"
  )

p10 = Professional.create!(
  user: u10,
  description:" 20 years expérience all over the world",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address:"98 Rue de Douai, Lille, France"
  )

e1 = Event.create!(
  user: u1,
  address:"98 Rue de Douai, Lille, France",
  start_time: DateTime.strptime("03/22/2016 12:00 AM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("04/22/2016 12:00 AM", "%m/%d/%Y %H:%M"),
  professional: p10
  )

# e2 = Event.create!(
#   user_id: u2,
#   start_time: DateTime.new(2016,4,10,12,30),
#   end_time: DateTime.new(2016,4,10,20,0),
#   professional: p9
#   )

# e3 = Event.create!(
#   user_id: u3,
#   start_time: ,
#   end_time: ,
#   professional:p8
#   )

# e4 = Event.create!(
#   user_id: u4,
#   start_time: ,
#   end_time: ,
#   professional: p7
#   )

# e5 = Event.create!(
#   user_id: u5,
#   start_time: ,
#   end_time: ,
#   professional: p5
#   )

# e6 = Event.create!(
#   user_id: u6,
#   start_time: ,
#   end_time: ,
#   professional: p6
#   )

# e7 = Event.create!(
#   user_id: u7,
#   start_time: ,
#   end_time: ,
#   professional: p4
#   )

# e8 = Event.create!(
#   user_id: u8,
#   start_time: ,
#   end_time: ,
#   professional: p3
#   )

# e9 = Event.create!(
#   user_id: u9,
#   start_time: ,
#   end_time: ,
#   professional: p2
#   )

# e10 = Event.create!(
#   user_id: u10,
#   start_time: ,
#   end_time: ,
#   professional: p1
#   )
#
#   Review.Create!(
#   rating:
#   content:
#   reviewable:
#   reviewable_type:
#   created_at:
#   reviewer:
#   reviewer_type:
#   event:
#   )
#
#
#
#
#
#   create_table "reviews", force: :cascade do |t|
    # t.integer  "rating"
    # t.text     "content"
    # t.integer  "reviewable_id"
    # t.string   "reviewable_type"
    # t.datetime "created_at",      null: false
    # t.datetime "updated_at",      null: false
    # t.integer  "reviewer_id"
    # t.string   "reviewer_type"
    # t.integer  "event_id"

