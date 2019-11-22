puts 'Cleaning database...'
Rental.destroy_all
puts 'all rentals destroyed'
User.destroy_all
puts 'all users destroyed'
Product.destroy_all
puts 'all products destroyed'
puts 'Creating 5 fake users...'

STATUS = ["Excellent", "Very Good", "Good", "Correct", "Useless"]

toto = User.create!({
  email:  "toto@gmail.com",
  password: "123456",
  first_name: "Kevin",
  last_name: "Dujardin"
})
tonton = User.create!({
  email:  "tonton@gmail.com",
  password: "123456",
  first_name: "Sponge",
  last_name: "Bob"
})
tata = User.create!({
  email:  "tata@gmail.com",
  password: "123456",
  first_name: "Claudine",
  last_name: "Georgette"
})
tutu = User.create!({
  email:  "tutu@gmail.com",
  password: "123456",
  first_name: "Maurice",
  last_name: "Latutule"
})
titi = User.create!({
  email:  "titi@gmail.com",
  password: "123456",
  first_name: "Thierry",
  last_name: "Henry"
})

puts 'Creating fake products...'
p1 = Product.create!({
  category: "kite",
  brand: "2020 Cabrinha Crosswing",
  description: "Designed for riders looking for an efficient power source to use with many types of watercraft, the all-new Crosswing is the simplest form of wind driven power you can hold in your own two hands. The Crosswing is a compact, fully controllable inﬂatable wing with an incredibly wide range of use on water or land.
Its simplicity is unmatched. The Crosswing is free of control lines, there is no mast, no separate boom or a control bar. Everything you need to ﬂy the wing is contained in its fully integrated form. Once you inﬂate the wing (in 20 seconds or less), it is ready to ﬂy.
The Crosswing is instantly compatible with many boards currently in use, from foil boards to SUPs to snowboards or skateboards, making it the perfect tool to ﬂy yourself across any body of water or land. ",
  status: STATUS[rand(0..4)],
  price: rand(50..150),
  user_id: toto.id,
  address: "157 Rue du Po, 56340 Carnac"
})

puts 'product 1'

p2 = Product.create!({

  category: "board",
  brand: "Duotone",
  description: "Trying to get into the world of hydrofoil surfing?  Not sure what you need to get? With so many options out there and more arriving every single day, it is no wonder you may be a bit confused or gun shy.  The FS1 is Liquid Force’s solution to your problem. ",
  status: STATUS[rand(0..4)],
  price: rand(50..150),
  user_id: toto.id,
  address: "2 Rue Florian Laporte, 56100 Lorient"
})
puts 'product 2'

p3 = Product.create!({
  category: "harness",
  brand: "2020 Duotone Apex Curve 13 Select",
  description: "DUOTONE APEX CURVE 13 SELECT
The Duotone Apex Curv 13 Select in cooperation with ION is a very light and one of the most durable hardshell harnesses on the market featuring ION's revolutionary thermo composite CURV material. Thanks to high-end add-ons like the C_Bar 3.0 (Hook/Webbing Slider), Double D Buckles and Kite_Knife Multitool 2.0, the Select level stands out from the crowd. With a flex index of 13, all loads are distributed perfectly through its rigid 3D pre-shaped center part. Together with the high outline, this medium rigid to stiff hardshell harness offers all the comfort any dedicated kiter could wish for. Flexible side parts allow the rider to move and twist freely. Additionally, inside EVA prevents the harness from riding up while non-water absorbent Hyper_foam contributes to outstanding comfort for extra-long water action.",
  status: STATUS[rand(0..4)],
  price: rand(50..150),
  user_id: titi.id,
  address: "District de Sants-Montjuïc, Barcelone, Espagne"
})
puts 'product 3'

p4 = Product.create!({
  category: "kite bar",
  brand: "2020 Liquid Force Direct Drive Control System",
  description: "In collaboration with R3 Design, Liquid Force is proud to introduce the Direct Drive control bar. On-the-fly trimming of the kite has never been easier with the bar mounted Sidewinder control knob. This intuitive system adjusts the kite’s power by trimming the rear lines of the kite. ",
  status: STATUS[rand(0..4)],
  price: rand(50..150),
  user_id: tonton.id,
  address: "1-5 Avenue du Golf, 33120 Arcachon"
})
puts 'product 4'

Product.create!({
  category: "full kite",
  brand: "surfbrand",
  description: "This set contains of:
- 1x Mono in size of choice
- 1x Trust Bar Quad Control 24m
- 1x Quick Release Freeride Kit
- 1x Quest TT
The product details were shown here on you-love-it on each single detail site of our articles",
  status: STATUS[rand(0..4)],
  price: rand(50..150),
  user_id: tonton.id,
  address: "154-340 Avenue du Onze Novembre, 40600 Biscarrosse"
})
puts 'product 5'

Product.create!({
  category: "accessories",
  brand: "2020 ION Neo Zip Top Men LS 2/1 CSK",
  description: "NEO TOPS are a must-have for every watersports nut hitting the sea or surf in milder climates. Although mainly used in warmer waters to keep the sun and wind off the skin, they can also be used as a second layer underneath your wetsuit. Thanks to the plush, wool-like Hot_Stuff lining, these tops have a luxurious texture that feels great, even on bare skin!
The NEO TOPS have a more detailed and technical construction than that of the standard Rashguard, providing 100% UV protection, efficient heat retention and a reduction in irritations and bruising often caused by the harness or surfboard.",
  status: STATUS[rand(0..4)],
  price: rand(50..150),
  user_id: tata.id,
  address: "Midoun, Tunisie"
})
puts 'product 6'

Product.create!({
  category: "full kite",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: STATUS[rand(0..4)],
  price: rand(50..150),
  user_id: tata.id,
  address: "Erriadh Tunisie"
})
puts 'product 7'

Product.create!({
  category: "board",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: STATUS[rand(0..4)],
  price: rand(50..150),
  user_id: tutu.id,
  address: "9 Rue des Falaises, 66290 Cerbère"
})
puts 'product 8'

Rental.create!({
  user_id: titi.id,
  product_id: p1.id,
  date_start: Date.new(2019,12,24),
  date_end: Date.new(2020,12,25),
})

Rental.create!({
  user_id: titi.id,
  product_id: p2.id,
  date_start: Date.new(2019,12,21),
  date_end: Date.new(2020,11,21),
})

Rental.create!({
  user_id: toto.id,
  product_id: p3.id,
  date_start: Date.new(2020,1,1),
  date_end: Date.new(2020,2,1),
})

Rental.create!({
  user_id: toto.id,
  product_id: p4.id,
  date_start: Date.new(2019,12,18),
  date_end: Date.new(2019,12,19),
})

Rental.create!({
  user_id: toto.id,
  product_id: p4.id,
  date_start: Date.new(2020,11,21),
  date_end: Date.new(2020,11,21),
})
puts 'Finished!'
