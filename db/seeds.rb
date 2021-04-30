# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "felix", email:'felix@gmail.com', password:'ay98776')
User.create(name: "bishoy", email:'bishoy@gmail.com', password:'749ouh')

puts 'Dummy users created'

3.times do |i|
  Post.create(title: "Post-#{i} Title", body: "This is the body of this post", user: User.last)
end