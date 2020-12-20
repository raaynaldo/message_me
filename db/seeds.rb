# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names = ["Ray", "James", "Brown", "White", "Seulgi"]

users = names.map { |name|
  User.create(username: name, password: "12345")
}

users.each { |user|
  Message.create(body: "Hello, My name is #{user.username}. Nice to meet you!", user_id: user.id)
}
