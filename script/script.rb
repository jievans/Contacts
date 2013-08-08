require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users',
#   # query_values: {
# #       'user[name]' => 'dan',
# #       'user[email]' => 'dan@theman.com'
# #       #'some_category[inner_inner_hash][key]' => 'value',
# #       #'something_else' => 'aaahhhhh'
# #     }
# ).to_s

#p RestClient.post(url,{"user"  => {"name" => "dan"}} )
#p "\n"
# puts "\nTest for the users#index"
# p RestClient.get("http://localhost:3000/users")
#
# puts "\nTest for the users#show"
# p RestClient.get("http://localhost:3000/users/2")
#
# puts "\nTest for the users#create"
# p RestClient.post("http://localhost:3000/users",
#   {:user => {:username => "Ned", :password => "gizmo"}})
#
# puts "\nTest for the users#new"
# p RestClient.get("http://localhost:3000/users/new")
#
# puts "\nTest for the users#edit"
# p RestClient.get("http://localhost:3000/users/4/edit")
#
# puts "\nTest for the users#update"
# p RestClient.put("http://localhost:3000/users/4",
#   {:user => {:username => "John", :password => "cat"} })
#
# puts "\nTest for the users#destroy"
# p RestClient.delete("http://localhost:3000/users/7")

#=============================================================

# puts "\nTest for the contacts#create"
# p RestClient.post("http://localhost:3000/contacts",
#   {:contact => {:name => "Bob",
#     :email => "Bob@hotmail.com",
#     :phone_number => "815-555-8541",
#     :address => "123 Fake St",
#     :user_id => 1}})
#
# p RestClient.post("http://localhost:3000/contacts",
#   {:contact => {:name => "Sally",
#     :email => "Sally@hotmail.com",
#     :phone_number => "200-555-5309",
#     :address => "1742 Evergreen Terrace",
#     :user_id => 1}})
#
# p RestClient.post("http://localhost:3000/contacts",
#   {:contact => {:name => "Tommy",
#     :email => "Tommy@yahoo.com",
#     :phone_number => "100-999-7777",
#     :address => "1600 Pennsylvania Ave",
#     :user_id => 2}})

# puts "\nTest for the contacts#index"
# p RestClient.get("http://localhost:3000/contacts")
#
# puts "\nTest for the contacts#show"
# p RestClient.get("http://localhost:3000/contacts/2")
#
# puts "\nTest for the contacts#new"
# p RestClient.get("http://localhost:3000/contacts/new")
#
# puts "\nTest for the contacts#edit"
# p RestClient.get("http://localhost:3000/contacts/4/edit")
#
# puts "\nTest for the contacts#update"
# p RestClient.put("http://localhost:3000/contacts/3",
#   {:contact => {:address => "1400 Vermont Ave"} })
#
# puts "\nTest for the contacts#destroy"
# p RestClient.delete("http://localhost:3000/contacts/3")

#===================================================

 # p RestClient.post("http://localhost:3000/contacts",
 #   {:contact => {:name => "FRED WHOSE NAME STANDS OUT",
 #     :email => "Tommy@yahoo.com",
 #     :phone_number => "100-999-7777",
 #     :address => "1600 Pennsylvania Ave",
 #     :user_id => 2}})

puts "\n Tests for nested routes"

puts "\nTest for the contacts#index"
p RestClient.get("http://localhost:3000/users/1/contacts")

puts "\nTest for the contacts#show"
p RestClient.get("http://localhost:3000/users/1/contacts/2")

