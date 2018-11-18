# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new(:email => "user@name.com", :password => 'password', :password_confirmation => 'password')
u.save

u = User.new(:email => "example@example.com", :password => 'password', :password_confirmation => 'password')
u.save