puts 'Cleaning database...'
Rental.destroy_all
puts 'all rentals destroy'
User.destroy_all
puts 'all users destroy'
Product.destroy_all
puts 'all products destroy'

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
  category: "kite",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "157 Rue du Po, 56340 Carnac",

})
Product.create!({
  category: "board",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "2 Rue Florian Laporte, 56100 Lorient",

})
Product.create!({
  category: "board",
  brand: "Duotone",
  description: "Lorem efef ezf eez ",
  status: rand(1..5),
  price: rand(50..150),
  user_id: toto.id,
  address: "9 Rue des Falaises, 66290 Cerbère",

})


puts 'Finished!'
