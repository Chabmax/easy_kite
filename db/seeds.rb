puts 'Cleaning database...'
Rental.destroy_all
puts 'all rentals destroyed'
User.destroy_all
puts 'all users destroyed'
Product.destroy_all
puts 'all products destroyed'
puts 'Creating 5 fake users...'

toto = User.create!({
  email:  "toto@gmail.com",
  password: "123456",
  first_name: "Toto",
  last_name: "Dujardin"
})
tonton = User.create!({
  email:  "tonton@gmail.com",
  password: "123456",
  first_name: "Tonton",
  last_name: "Bob"
})
tata = User.create!({
  email:  "tata@gmail.com",
  password: "123456",
  first_name: "Tata",
  last_name: "Georgette"
})
tutu = User.create!({
  email:  "tutu@gmail.com",
  password: "123456",
  first_name: "Tutu",
  last_name: "Latutule"
})
titi = User.create!({
  email:  "titi@gmail.com",
  password: "123456",
  first_name: "Titi",
  last_name: "Henry"
})

puts 'Creating fake products...'

Product.create!({

p1 = Product.create!({

  category: "kite",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "157 Rue du Po, 56340 Carnac"
})

Product.create!({

puts 'product 1'

p2 = Product.create!({

  category: "board",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "2 Rue Florian Laporte, 56100 Lorient"
})
puts 'product 2'

p3 = Product.create!({
  category: "harness",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: titi.id,
  address: "District de Sants-Montjuïc, Barcelone, Espagne"
})
puts 'product 3'

p4 = Product.create!({
  category: "kite bar",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: tonton.id,
  address: "1-5 Avenue du Golf, 33120 Arcachon"
})
puts 'product 4'

Product.create!({

  category: "full kite",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: tonton.id,
  address: "154-340 Avenue du Onze Novembre, 40600 Biscarrosse"
})
puts 'product 5'

Product.create!({
  category: "accessories",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: tata.id,
  address: "Midoun, Tunisie"
})
puts 'product 6'

Product.create!({
  category: "full kite",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: tata.id,
  address: "Erriadh Tunisie"
})
puts 'product 7'

Product.create!({
  category: "board",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: tutu.id,
  address: "9 Rue des Falaises, 66290 Cerbère"
})
puts 'product 8'

Rental.create!({
  user_id: titi.id,
  product_id: p1.id,
  date_start: Date.new(2020,1,1),
  date_end: Date.new(2020,2,1),
})

Rental.create!({
  user_id: titi.id,
  product_id: p2.id,
  date_start: Date.new(2020,2,14),
  date_end: Date.new(2020,2,16),
})


puts 'Finished!'
