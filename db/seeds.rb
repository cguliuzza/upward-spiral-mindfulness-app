# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all

puts "Planting users..."

u1 = User.create(first_name: "Flynn", last_name: "Rider", email: "eugene@disney.com", password: "password1", admin: false)
u2 = User.create(first_name: "Jason", last_name: "Bourne", email: "davidwebb@treadstone.com", password: "password2", admin: false)
u3 = User.create(first_name: "Pink", last_name: "Panther", email: "pink@panther.com", password: "password3", admin: false)

puts "~^~^~ DONE SEEDING ~^~^~"