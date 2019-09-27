# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "John", email: "john@example.com")
User.create(username: "chasing_amy", email: "amy@example.com")

fic = Category.create(name: "Fiction")
non_fic = Category.create(name: "Non-Fiction")

p1 = Post.create(title: "So Cool", content: "Aren't I cool? Right?!!!")
p2 = Post.create(title: "Food Trucks", content: "Can't we have a bidding system where workers can vote?")

p1.categories << fic
p2.categories << non_fic

Comment.create(content: "Lovely idea", user_id: 1, post_id: 2)
Comment.create(content: "If you say so ", user_id: 2, post_id: 1)
