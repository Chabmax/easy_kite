puts 'Cleaning database...'
User.destroy_all
Product.destroy_all

puts 'Creating 5 fake users...'

User.create!{
  email: "toto@gmail.com",
  password: "123456",
  first_name: "Toto",
  last_name: "Dujardin"
}
User.create!{
  email: "tonton@gmail.com",
  password: "123456",
  first_name: "Tonton",
  last_name: "Bob"
}
User.create!{
  email: "tata@gmail.com",
  password: "123456",
  first_name: "Tata",
  last_name: "Georgette"
}
User.create!{
  email: "tutu@gmail.com",
  password: "123456",
  first_name: "Tutu",
  last_name: "Latutule"
}
User.create!{
  email: "titi@gmail.com",
  password: "123456",
  first_name: "Titi",
  last_name: "Henry"
}

puts 'Finished!'
