require 'sinatra'
require './justdesserts.rb'


@@url = "https://api.spoonacular.com/recipes/search"

get '/' do
  erb :index
end

get '/cakes' do
  # req = HTTParty.get('https://api.spoonacular.com/recipes/search?query=cake&number=3&apiKey=889d85cffdfd45c58e3d6762bb4b446d')
  # data = JSON.parse(req.body)
  erb :cakes
end

get '/cookies' do
  # req = HTTParty.get('https://api.spoonacular.com/recipes/search?query=cookie&number=3&apiKey=889d85cffdfd45c58e3d6762bb4b446d')
  # data = JSON.parse(req.body)
  erb :cookies
end

get '/muffins' do
  # req = HTTParty.get('https://api.spoonacular.com/recipes/search?query=muffin&number=3&apiKey=889d85cffdfd45c58e3d6762bb4b446d')
  # data = JSON.parse(req.body)
  erb :muffins
end
