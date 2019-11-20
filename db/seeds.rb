puts 'Cleaning database...'
Rental.destroy_all
puts 'all rentals destroyed'
User.destroy_all
puts 'all users destroyed'
Product.destroy_all
puts 'all products destroyed'
Rental.destroy_all
puts 'all rentals destroyed'
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

p1 = Product.create!({
  category: "aile",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "157 Rue du Po, 56340 Carnac",

})
p2 = Product.create!({
  category: "planche",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "2 Rue Florian Laporte, 56100 Lorient",

})

p3 = Product.create!({
  category: "harnais",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "11 rue de la mer",

})
p4 = Product.create!({
  category: "barre",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "11 rue de la mer",

})
Product.create!({
  category: "kit complet",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: tonton.id,
  address: "11 rue de la mer",

})
Product.create!({
  category: "accessoires",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: tata.id,
  address: "11 rue de la mer",

})
Product.create!({
  category: "kit complet",
  brand: "surfbrand",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: tata.id,
  address: "11 rue de la mer",

})

Product.create!({
  category: "planche",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "9 Rue des Falaises, 66290 Cerbère",

})


Rental.create!({
  user_id: titi.id,
  product_id: p1,
  date_start: DateTime.new(2020,1,1),
  date_end: DateTime.new(2020,2,1),
})

Rental.create!({
  user_id: titi.id,
  product_id: p2,
  date_start: DateTime.new(2020,2,14),
  date_end: DateTime.new(2020,2,16),
})


puts 'Finished!'
