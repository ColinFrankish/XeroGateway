
  require 'faraday'
  require 'faraday_middleware'
  require 'pry'
  require 'net/http'
#   url = 'https://github.com/'


# conn = Faraday.new(url: url) do |faraday|
#   faraday.adapter Faraday.default_adapter
#   faraday.response :json
# end

# puts conn.get '/users/:colinfrankish'

url = 'https://api.spotify.com/v1'
 
conn = Faraday.new(url: url) do |faraday|
  faraday.adapter Faraday.default_adapter
  faraday.response :json
end
 
response = conn.get('search', type: 'artist', q: 'tycho')
puts response.body

puts "*******************************"
url = URI('https://api.github.com/')
 Net::HTTP.get(url)
puts url


puts "*******************************"
res = Net::HTTP.get_response(URI('http://www.example.com/index.html'))
print res.body





