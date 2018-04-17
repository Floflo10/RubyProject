# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
   user = User.create({ email: 'ismael.hadj13@gmail.com', password: "password" })
   theme = Theme.create({ name: 'aventura name', genre: "winter" })
   trips = Trip.create({ goal: 'Tanzani', time: 12, cost: 150, story:"juste un voyage", user: user, theme: theme })
#   Character.create(name: 'Luke', movie: movies.first)
