require 'sinatra'
require './justdesserts.rb'
require 'httparty'

@@url = "https://api.spoonacular.com/recipes/"

get '/' do
  erb :index
end

get '/cakes' do
  erb :cakes
end

get '/cookies' do
  erb :cookies
end

get '/muffins' do
  erb :muffins
end

get '/tryme' do
  req = HTTParty.get("#{@@url}search?query=flan&number=1&apiKey=#{ENV['RECIPE_KEY']}")
  @data = JSON.parse(req.body)
  puts @data

  erb :tryme
end
