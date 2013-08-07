require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users',
  # query_values: {
#       'user[name]' => 'dan',
#       'user[email]' => 'dan@theman.com'
#       #'some_category[inner_inner_hash][key]' => 'value',
#       #'something_else' => 'aaahhhhh'
#     }
).to_s

#p RestClient.post(url,{"user"  => {"name" => "dan"}} )
#p "\n"
p RestClient.get("http://localhost:3000/users")
