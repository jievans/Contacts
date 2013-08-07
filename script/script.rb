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
puts "\nTest for the users#index"
p RestClient.get("http://localhost:3000/users")

puts "\nTest for the users#show"
p RestClient.get("http://localhost:3000/users/5")

puts "\nTest for the users#create"
p RestClient.post("http://localhost:3000/users",
  {:user => {:username => "Ned", :password => "gizmo"}})

puts "\nTest for the users#new"
p RestClient.get("http://localhost:3000/users/new")

puts "\nTest for the users#edit"
p RestClient.get("http://localhost:3000/users/4/edit")

puts "\nTest for the users#update"
p RestClient.put("http://localhost:3000/users/4",
  {:user => {:username => "John", :password => "cat"} })

puts "\nTest for the users#destroy"
p RestClient.delete("http://localhost:3000/users/7")
