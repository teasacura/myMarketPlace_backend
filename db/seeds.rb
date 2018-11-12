# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "e", email: "e@gmail.com", password: "12345")
user2 = User.create(username: "lilah", email: "lilah@gmail.com", password: "12345")

product1 = Product.create(name: "shampoo Love")
product2 = Product.create(name: "conditioner Peace")

userproduct1 = UserProduct.create(product: product1, user: user1)
userproduct2 = UserProduct.create(product: product2, user: user2)
userproduct3 = Favorite.create(product: product2, user: user1)
userproduct4 = Favorite.create(product: product1, user: user2)
