# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.new
user.email = 'tom@last.com'
user.password = 'Password320'
user.password_confirmation = 'Password320'
user.full_name = 'Tom Teacher'
user.admin = true
user.save!

user2 = User.new
user2.email = 'tom@testing.com'
user2.password = 'Password320'
user2.password_confirmation = 'Password320'
user2.full_name = 'Tom Testing Student'
user2.admin = false
user2.save!






puts "seed test"