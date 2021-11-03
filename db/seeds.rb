# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Plowing the fields..."

User.delete_all
UserAction.delete_all
Action.delete_all
Journal.delete_all
Category.delete_all

puts "Planting users..."

flynn = User.create(first_name: "Flynn", last_name: "Rider", email: "eugene@disney.com", password: "123", admin: false)
jason = User.create(first_name: "Jason", last_name: "Bourne", email: "davidwebb@treadstone.com", password: "234", admin: false)
pink_panther = User.create(first_name: "Pink", last_name: "Panther", email: "pink@panther.com", password: "345", admin: false)

puts "Planting user actions..."

user_action1 = UserAction.create(favorite: false, dislike: false, user_id: 2, action_id: 1, journal_id: nil, category_id: 3)
user_action2 = UserAction.create(favorite: true, dislike: false, user_id: 3, action_id: 3, journal_id: nil, category_id: 1)
user_action3 = UserAction.create(favorite: false, dislike: true, user_id: 2, action_id: 2, journal_id: 1, category_id: 3)

puts "Planting actions..."

action1 = Action.create(name: "Timed Meditation", description: "Take a deep breath. Be present and still.", minutes: 5)
action2 = Action.create(name: "Journal", description: "My half-baked thought in this moment is...", minutes: 5)
action3 = Action.create(name: "Go for a Walk", description: "Put your shoes on and take one step outside", minutes: 5)

puts "Planting journals..."

journal1 = Journal.create(title: "Test 1", message: "This is my very first journal entry.")
journal2 = Journal.create(title: "Test 2", message: "Simba has been sleeping all day.")
journal3 = Journal.create(title: "Test 3", message: "I think it's lunch time.")

puts "Planting categories..."

category1 = Category.create(name: "Health")
category2 = Category.create(name: "Work")
category3 = Category.create(name: "Spiritual/Personal Growth")
category4 = Category.create(name: "Recreation")


puts "~^~^~ DONE SEEDING ~^~^~"

