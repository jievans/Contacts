# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create!(:name => "Vito", :password_hash => User.pw_hash("swordfish"))
# User.create!(:name => "Josh", :password_hash => User.pw_hash("super secret"))

User.create!(:username => "Vito", :password => "swordfish")
User.create!(:username => "Josh", :password => "super secret")