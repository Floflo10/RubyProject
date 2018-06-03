# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Topic.destroy_all

Topic.create!(name: "Sport")
Topic.create!(name: "Road Trip")
Topic.create!(name: "Culturel")


def load_picture(name)
  filepath = Rails.root.join("db", "imgs", name)
  File.open(filepath)
end

Picture.create!(url: load_picture("fuji.jpg"))
Picture.create!(url: load_picture("temple.jpg"))
Picture.create!(url: load_picture("tokyo.jpg"))


puts "#{Topic.count} topic added"
