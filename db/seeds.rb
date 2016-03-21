Dose.delete_all
Ingredient.delete_all
Cocktail.delete_all
Review.delete_all
Event.delete_all
Professional.delete_all
User.delete_all

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
strawberries = Ingredient.create(name: "strawberries")
strawberries_liquor = Ingredient.create(name: "strawberries liquor")
cognac = Ingredient.create(name: "Cognac")
kirsch = Ingredient.create(name: "Kirsch")




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

cocktail11 = Cocktail.new(
  name: "Daquiri Fraise",
  image: "daquiri_fraise.jpg",
  recipe_steps: "In a blender, combine ice, sugar and strawberries. Pour in lime juice, lemon juice, rum and lemon-lime soda. Blend until smooth. Pour into glasses and serve."
)
cocktail11.save!

cocktail12 = Cocktail.new(
  name: "Black Jack",
  image: "black_jack.jpg",
  recipe_steps: "Fill a shaker with ice cubes. Add all ingredients. Shake and strain into a chilled cocktail glass."
)
cocktail12.save!


Dose.create!(
  cocktail: cocktail1,
  ingredient: lime,
  quantity: '3 pieces'
)

Dose.create!(
  cocktail: cocktail1,
  ingredient: rhum,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail1,
  ingredient: mint_leaves,
  quantity: '7'
)

Dose.create!(
  cocktail: cocktail1,
  ingredient: sparkling_water,
  quantity: '12 cl'
)
Dose.create!(
  cocktail: cocktail1,
  ingredient: cane_sugar,
  quantity: '2 pieces'
)

Dose.create!(
  cocktail: cocktail2,
  ingredient: gin,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail2,
  ingredient: lemon,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail2,
  ingredient: cane_sugar,
  quantity: '2 pieces'
)

Dose.create!(
  cocktail: cocktail2,
  ingredient: sparkling_water,
  quantity: '12 cl'
)
Dose.create!(
  cocktail: cocktail3,
  ingredient: vodka,
  quantity: '4 cl'
)
Dose.create!(
  cocktail: cocktail3,
  ingredient: curacao,
  quantity: '3 cl'
)

Dose.create!(
  cocktail: cocktail3,
  ingredient: lemon,
  quantity: '2 pieces'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient: rhum,
  quantity: '10 cl'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient: cane_sugar,
  quantity: '5 pieces'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient: orange_juice,
  quantity: '10 cl'
)
Dose.create!(
  cocktail: cocktail4,
  ingredient: pineapple,
  quantity: '10 cl'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient: grapefruit,
  quantity: '10 cl'
)

Dose.create!(
  cocktail: cocktail4,
  ingredient: tea,
  quantity: '1 cl'
)
Dose.create!(
  cocktail: cocktail5,
  ingredient: tequila,
  quantity: '10 cl'
)

Dose.create!(
  cocktail: cocktail5,
  ingredient: orange_juice,
  quantity: '12 cl'
)

Dose.create!(
  cocktail: cocktail5,
  ingredient: grenadine,
  quantity: '2 cl'
)

Dose.create!(
  cocktail: cocktail6,
  ingredient: ice,
  quantity: '7 cl'
)

Dose.create!(
  cocktail: cocktail6,
  ingredient: kahlua,
  quantity: '7 cl'
)

Dose.create!(
  cocktail: cocktail6,
  ingredient: vodka,
  quantity: '7 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient: vodka,
  quantity: '2 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient: midori,
  quantity: '2 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient: chambord,
  quantity: ' 2 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient: airelle_juice,
  quantity: ' 6 cl'
)

Dose.create!(
  cocktail: cocktail7,
  ingredient: pineapple,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail8,
  ingredient: rhum,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail8,
  ingredient: coco_cream,
  quantity: '4 cl'
)

Dose.create!(
  cocktail: cocktail8,
  ingredient: pineapple,
  quantity: '12 cl'
)

Dose.create!(
  cocktail: cocktail9,
  ingredient: tequila,
  quantity: ' 3,5 cl'
)

Dose.create!(
  cocktail: cocktail9,
  ingredient: lemon_juice,
  quantity: ' 1,5 cl'
)

Dose.create!(
  cocktail: cocktail9,
  ingredient: agave_syrup,
  quantity: ' 2 cl'
)

Dose.create!(
  cocktail: cocktail9,
  ingredient: ice,
  quantity: ' 5 cl'
)

Dose.create!(
  cocktail: cocktail10,
  ingredient: cachaca,
  quantity: ' 5 cl'
)

Dose.create!(
  cocktail: cocktail10,
  ingredient: sugar ,
  quantity: ' 2 pieces'
)

Dose.create!(
  cocktail: cocktail10,
  ingredient: lemon,
  quantity: ' 1 piece'
)

Dose.create!(
  cocktail: cocktail10,
  ingredient: ice,
  quantity: ' 5 cl'
)

Dose.create!(
  cocktail: cocktail11,
  ingredient: rhum,
  quantity: '5 cl'
)

Dose.create!(
  cocktail: cocktail11,
  ingredient: strawberries_liquor,
  quantity: '2 cl'
)

Dose.create!(
  cocktail: cocktail11,
  ingredient: strawberries,
  quantity: '4 pieces'
)

Dose.create!(
  cocktail: cocktail11,
  ingredient: lemon_juice,
  quantity: '3 cl'
)

Dose.create!(
  cocktail: cocktail11,
  ingredient: sugar,
  quantity: '3 pieces'
)

Dose.create!(
  cocktail: cocktail11,
  ingredient: ice,
  quantity: '3 cl'
)

Dose.create!(
  cocktail: cocktail12,
  ingredient: cognac,
  quantity: '6 cl'
)

Dose.create!(
  cocktail: cocktail12,
  ingredient: kirsch,
  quantity: '1,5 cl'
)

Dose.create!(
  cocktail: cocktail12,
  ingredient: coffee,
  quantity: '4,5 cl'
)


u1 = User.new(
  name: "Greg Sion",
  password: "12345678",
  email: "gregsion@mindspirits.fr",
  admin: true,
  rating: 3
)
u1.save!
u2 = User.create!(
  name: "Guillaume Caulier",
  password:'12345678',
  email: "guillaume@mindspirits.fr",
  admin: true,
  rating: 4
)
u3 = User.create!(
  name: "Matéo Sossah",
  password:"12345678",
  email: "mateo@mindspirits.com",
  admin: true,
  rating: 2
)

u4 = User.create!(
  name: "Juliette Picard",
  password:"12345678",
  email: "juliette@mindspirits.fr",
  admin: true,
  rating: 3
)

u5 = User.create!(
  name: "Bob Dupont",
  password:"12345678",
  email: "bob@mindspirits.fr",
  rating: 5
)

u6 = User.create!(
  name: "Jules Grammont",
  password:"12345678",
  email: "jules@mindspirits.fr",
  rating: 1
)

u7 = User.create!(
  name: "Catherine Dumont",
  password:"12345678",
  email: "catherine@mindspirits.fr",
  rating: 4
)

u8 = User.create!(
  name: "Romain Cuvelier",
  password:"12345678",
  email: "romain@mindspirits.fr",
  rating: 3.5
)

u9 = User.create!(
  name: "Sylvie Bernard",
  password:"12345678",
  email: "sylvie@mindspirits.fr",
  rating: 4.8
)

u10 = User.create!(
  name: "Marie Joly",
  password:"12345678",
  email: "marie@mindspirits.fr",
  rating: 5
)

p1 = Professional.create!(
  user: u1,
  name: u1.name,
  description: "5 years expériences in a bar in London. My favorite cocktail is Mojito",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "12 Rue Solférino, Lille, France",
  latitude: 50.635793,
  longitude: 3.045787,
  rating: 3.8
  )

p2 = Professional.create!(
  user: u2,
  name: u2.name,
  description: " work in the best bar in New York during 20 years.",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "165 Rue nationale, Lille, France",
  latitude: 50.632665,
  longitude: 3.052761,
  rating: 4.5
  )

p3 = Professional.create!(
  user: u3,
  name: u3.name,
  description: "I worked with the most famous barman in the world. I will be glad to work for you",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "23 Rue Léonard Danel, Lille, France",
  latitude: 50.639856,
  longitude: 3.056562,
  rating: 4
  )

p4 = Professional.create!(
  user: u4,
  name: u4.name,
  description: "I'm new in the barman profession, i just have finish my studies.",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "66 Rue Masséna, Lille, France",
  latitude: 50.631066,
  longitude: 3.054724,
  rating: 3.7
  )

p5 = Professional.create!(
  user: u5,
  name: u5.name,
  description: "My specialities : Mojito and Margarita cocktail : the best cocktail you never drink !!",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "45 Rue de Paris, Lille, France",
  latitude: 50.635333,
  longitude: 3.067002,
  rating: 3.1
  )

p6 = Professional.create!(
  user: u6,
  name: u6.name,
  description: " 8 years expériences in Paris",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "26 Rue de la Clef, Lille, France",
  latitude: 50.635333,
  longitude: 3.067002,
  rating: 4
  )

p7 = Professional.create!(
  user: u7,
  name: u7.name,
  description:" 3 years expérience in the South of France",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "125 Rue des Postes, Lille, France",
  latitude: 50.623730,
  longitude: 3.054609,
  rating: 4.5
  )

p8 = Professional.create!(
  user: u8,
  name: u8.name,
  description: "10 years experience working in nightclub",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "12 Rue de Gand, Lille, France",
  latitude: 50.643186,
  longitude: 3.067307,
  rating: 5
  )

p9 = Professional.create!(
  user: u9,
  name: u9.name,
  description: "New barman",
  phone_number:"+49612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address: "Malmöer Str. 27, 10439 Berlin, Germany",
  latitude: 52.55039,
  longitude: 13.403659999999945,
  rating: 3
  )

p10 = Professional.create!(
  user: u10,
  name: u10.name,
  description:" 20 years experience all over the world",
  phone_number:"0612345678",
  max_travel_range: 50,
  professional_role: "barman",
  business_address:"Via Vincenzo Monti, 12, 20123 Milano, Italy",
  latitude: 45.4670906,
  longitude: 9.17447459999994,
  rating: 5
  )

e1 = Event.create!(
  user: u1,
  address:"67 Rue de Paris, Lille, France",
  start_time: DateTime.strptime("03/22/2016 07:00 PM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("03/23/2016 03:00 AM", "%m/%d/%Y %H:%M"),
  professional: p5,
  latitude: 50.634869,
  longitude: 3.067928
  )

e2 = Event.create!(
  user: u2,
  address: "12 Avenue de Bretagne, Lille, France",
  start_time: DateTime.strptime("04/10/2016 12:00 PM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("04/12/2016 07:00 PM", "%m/%d/%Y %H:%M"),
  professional: p4,
  latitude: 50.635913,
  longitude: 3.025909
  )

e3 = Event.create!(
  user: u4,
  address: "12 Boulevard Jean-Baptiste Lebas, Lille, France",
  start_time: DateTime.strptime("01/05/2016 01:00 PM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("01/05/2016 04:00 PM", "%m/%d/%Y %H:%M"),
  professional:p3,
  latitude: 50.627448,
  longitude: 3.067863
  )

e4 = Event.create!(
  user: u3,
  address: "15 Rue de la Digue, Lille, France",
  start_time: DateTime.strptime("08/05/2016 01:00 PM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("08/05/2016 04:00 PM", "%m/%d/%Y %H:%M"),
  professional: p2,
  latitude: 50.634453,
  longitude: 3.047406
  )

e5 = Event.create!(
  user: u5,
  address: "50 Rue de Béthune, Lille, France",
  start_time: DateTime.strptime("03/31/2016 09:00 PM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("03/31/2016 11:00 PM", "%m/%d/%Y %H:%M"),
  professional: p1,
  latitude: 50.633759,
  longitude: 3.063058
  )

e6 = Event.create!(
  user: u6,
  address: "110 Rue Jeanne d Arc, Lille, France",
  start_time: DateTime.strptime("04/07/2016 09:00 AM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("04/12/2016 11:00 AM", "%m/%d/%Y %H:%M"),
  professional: p10,
  latitude: 50.622844,
  longitude: 3.064232
  )

e7 = Event.create!(
  user: u7,
  address: "12 Rue de Rouen, Lille, France",
  start_time: DateTime.strptime("06/15/2016 10:00 AM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("06/15/2016 02:00 PM", "%m/%d/%Y %H:%M"),
  professional: p8,
  latitude: 50.619098,
  longitude: 3.075011
  )

e8 = Event.create!(
  user: u8,
  address: "45 Rue de Gand, Lille, France",
  start_time: DateTime.strptime("05/20/2016 09:00 AM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("05/20/2016 16:00 PM", "%m/%d/%Y %H:%M"),
  professional: p9,
  latitude: 50.642704,
  longitude: 3.066452
  )

e9 = Event.create!(
  user: u9,
  address: "12 Rue du Pont du Lion d Or, Lille, France",
  start_time: DateTime.strptime("06/24/2016 04:00 PM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("06/24/2016 06:00 PM", "%m/%d/%Y %H:%M"),
  professional: p7,
  latitude: 50.639496,
  longitude: 3.091187
  )

e10 = Event.create!(
  user: u10,
  address:"12 Rue de la Bascule, Lille, France",
  start_time: DateTime.strptime("06/11/2016 02:00 AM", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("06/11/2016 07:00 PM", "%m/%d/%Y %H:%M"),
  professional: p6,
  latitude: 50.623663,
  longitude: 3.069175
  )

r1 = Review.create!(
  rating: 5,
  content: "Great place to make cocktails! Nice family ! I recommand them",
  reviewable: u10,
  reviewer: p6
  )

r2 = Review.create!(
  rating: 5,
  content: "The cocktails were awesome ! My favourite is the blue lagoon !!",
  reviewable: p6,
  reviewer: u10
  )

r3 = Review.create!(
  rating: 4,
  content: "Nice client with specific demand. The place is perfect to work",
  reviewable: u8,
  reviewer: p9
  )

r4 = Review.create!(
  rating: 2,
  content: "The barman was unpleasant and didn't do what we had asked!",
  reviewable: p9,
  reviewer: u8
  )

r5 = Review.create!(
  rating: 4,
  content: "Nice people, great place! It was a pleasure to work for them",
  reviewable: u8,
  reviewer: p9
  )

r6 = Review.create!(
  rating: 5,
  content: "A barman who do the best to satify his client! we had been good cocktails and not hesitate to contact him again next time",
  reviewable: p9,
  reviewer: u8
  )

r7 = Review.create!(
  rating: 3,
  content: "Place a little beat small to work, but the client is very nice!",
  reviewable: u5,
  reviewer: p1
  )

r8 = Review.create!(
  rating: 5,
  content: "Fabulous!",
  reviewable: p1,
  reviewer: u5
  )

r9 = Review.create!(
  rating: 1,
  content:"Bad place, the event became late and they don't respect the contract!",
  reviewable: u6,
  reviewer: p10
  )

r10 = Review.create!(
  rating: 3,
  content: "The barman works good!",
  reviewable: p10,
  reviewer: u6
  )

e5.update!(
  user_review: r7,
  professional_review: r8
  )

e6.update!(
  user_review: r10,
  professional_review: r9
  )

e7.update!(
  user_review: r6,
  professional_review: r5
  )

e8.update!(
  user_review: r4,
  professional_review:r3
  )

e10.update!(
  user_review: r2,
  professional_review: r1
  )
