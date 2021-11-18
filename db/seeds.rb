# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Plowing the fields..."

User = Api::V1::User
UserAction = Api::V1::UserAction
Action = Api::V1::Action
Journal = Api::V1::Journal
Category = Api::V1::Category
ActionCategory = Api::V1::ActionCategory
UserJournal = Api::V1::UserJournal
Motivation = Api::V1::Motivation
MotivationCategory = Api::V1::MotivationCategory

User.delete_all
UserAction.delete_all
Action.delete_all
Journal.delete_all
Category.delete_all
ActionCategory.delete_all
UserJournal.delete_all
Motivation.delete_all
MotivationCategory.delete_all

puts "Planting users..."

flynn = User.create(first_name: "Flynn", last_name: "Rider", email: "eugene@disney.com", password: "123")
jason = User.create(first_name: "Jason", last_name: "Bourne", email: "davidwebb@treadstone.com", password: "456")
pink_panther = User.create(first_name: "Pink", last_name: "Panther", email: "pink@panther.com", password: "789")
simba = User.create(first_name: "Simba", last_name: "Guliuzza", email: "simba@gmail.com", password: "123")

puts "Planting actions..."

action1 = Action.create(name: "Timed Meditation", description: "Take a deep breath. Be present and still.", minutes: 5)
action2 = Action.create(name: "Journal", description: "My half-baked thought in this moment is...", minutes: 5)
action3 = Action.create(name: "Go for a Walk", description: "Put your shoes on and take one step outside. Bonus Activity: Count how many fire hydrants you see while you're walking.", minutes: 5)

puts "Planting categories..."

category1 = Category.create(name: "Health")
category2 = Category.create(name: "Work")
category3 = Category.create(name: "Personal Growth")
category4 = Category.create(name: "Recreation")

puts "Planting journals..."

journal1 = Journal.create(title: "Plants", message: "I noticed my plants needed some water. It felt good to pick up each plant and give them a generous amount of water. I have been drinking a good amount of water this week.")
journal2 = Journal.create(title: "Phone a Friend", message: "Simba has been sleeping all day. I'm starting to feel lonely. My next best step is to call my friend. I'll go on a walk while we talk.")
journal3 = Journal.create(title: "Not Feeling Great", message: "I am acknowleding the I have not taken care of myself today. Haven’t done the dishes. Before I play Animal Crossing, I will eat a quick lunch and start my 5 minute timer to do the dishes.")

puts "Planting motivations..."

motivation1 = Motivation.create(text: "Done is good enough.", author: "Anonymous", likes: 0)
motivation2 = Motivation.create(text: "The secret of getting ahead is getting started.", author: "Mark Twain", likes: 3)
motivation3 = Motivation.create(text: "Whatever you are, be a good one.", author: "Abraham Lincoln", likes: 0)
motivation4 = Motivation.create(text: "If we have the attitude that it’s going to be a great day it usually is.", author: "Catherine Pulsifier", likes: 0)
motivation5 = Motivation.create(text: "If you cannot do great things, do small things in a great way.", author: "Napoleon Hill", likes: 0)
motivation6 = Motivation.create(text: "Whenever you find yourself doubting how far you can go, just remember how far you have come.", author: "Anonymous", likes: 0)

puts "Planting motivation categories..."

category2.motivations << [motivation1]
category2.motivations << [motivation2]
category2.motivations << [motivation3]
category3.motivations << [motivation3]
category3.motivations << [motivation4]
category2.motivations << [motivation5]
category3.motivations << [motivation6]

puts "Planting user journals..."

flynn.journals << [journal1]
flynn.journals << [journal2]
pink_panther.journals << [journal3]

puts "Planting user actions..."

flynn.actions << [action1]
pink_panther.actions << [action3]
jason.actions << [action3]
simba.actions << [action1]
flynn.actions << [action2]
pink_panther.actions << [action3]
pink_panther.actions << [action1]

puts "Planting action categories..."

action1.categories << [category1]
action2.categories << [category3]
action3.categories << [category1]

puts "~^~^~ DONE SEEDING ~^~^~"