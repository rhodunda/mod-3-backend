# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destorying data..."

Purchase.destroy_all
User.destroy_all
Product.destroy_all

puts "crrating users..."

user1 = User.create(name: "bryan", email: "rhrhrhr@gmail.com ", money: 5000000)
user2 = User.create(name: "mary", email: "rhrhrhr@gmail.com ", money: 5000)
user3 = User.create(name: "bill", email: "rhrhrhr@gail.com ", money: 50000)
user4 = User.create(name: "bob", email: "rhrhrhr@gmail.com ", money: 500000)
user5 = User.create(name: "tom", email: "rhrhrhr@gmail.com ", money: 5000)

puts "creating products "

product1 = Product.create(name: "tesla", price: 35000, picture: "https://cdn.shopify.com/s/files/1/0173/8204/7844/articles/Tesla-Cybertruck-Matte-Black_1600x.jpeg?v=1574505379")
product2 = Product.create(name: "house", price: 350000, picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRm8Szj2Fr3fWMp0ctWoY7N_d_MXS0xZ5QV5QymmKEygH1c3UmB&usqp=CAU")
product3 = Product.create(name: "tv", price: 3500, picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWHMQvuFGben71GdvJIGRtMm7qx7uAb7E26Kyq_YkVfrWtxCSx&usqp=CAU")
product4 = Product.create(name: "car", price: 2500000, picture: "https://cdn.motor1.com/images/mgl/QE1q1/s1/rolls-royce-phantom-by-spofec.jpg")
product5 = Product.create(name: "boat", price: 350000, picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKgMJin9Mnhnx2drbwhbs6AHmBgAw9tz55I5roa8XZWd8zwiw7&usqp=CAU")

puts "creating purchases"

purchases1 = Purchase.create(product_id: Product.all.sample.id, user_id: User.all.sample.id)
purchases2 = Purchase.create(product_id: Product.all.sample.id, user_id: User.all.sample.id)
purchases3 = Purchase.create(product_id: Product.all.sample.id, user_id: User.all.sample.id)
purchases4 = Purchase.create(product_id: Product.all.sample.id, user_id: User.all.sample.id)
purchases5 = Purchase.create(product_id: Product.all.sample.id, user_id: User.all.sample.id)
purchases6 = Purchase.create(product_id: Product.all.sample.id, user_id: User.all.sample.id)


puts "seeds loaded..."