# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(:email => "user@name.com", :password => 'password', :password_confirmation => 'password')
u1.save
s1 = Space.new(user_id: 1, name: "Red House", description: "nice big house", price_per_night: 83.0, available_from: "2018-11-18", available_to: "2018-11-21",)
s1.save
s2 = Space.new(user_id: 1, name: "The Elephant", description: "One room big room above pub", price_per_night: 75.0, available_from: "2018-11-20", available_to: "2018-11-25",)
s2.save

u2 = User.new(:email => "example@example.com", :password => 'password', :password_confirmation => 'password')
u2.save
s3 = Space.new(user_id: 2, name: "Relaxing Space", description: "big room with lots of space", price_per_night: 97.55, available_from: "2018-11-18", available_to: "2018-11-29",)
s3.save
s4 = Space.new(user_id: 2, name: "The bridge house", description: "big house next to a bridge", price_per_night: 65.0, available_from: "2018-11-21", available_to: "2018-11-25",)
s4.save

r1 = Request.new(user_id: 2, space_id: s1, booked_date: "2018-11-18")