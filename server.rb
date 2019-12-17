require 'sinatra'
require './justdesserts.rb'
require 'httparty'

@@url = "https://api.spoonacular.com/recipes/search"

get '/' do
  erb :index
end

get '/cakes' do
  req = HTTParty.get(@@url,{query: {
    query: "cake",
    number: 3,
    apiKey: ENV["RECIPE_KEY"]
  }
    })
  data = JSON.parse(req.body)
  erb :cakes
end

get '/cookies' do
  req = HTTParty.get(@@url,{query: {
    query: "cookies",
    number: 3,
    apiKey: ENV["RECIPE_KEY"]
  }
    })
      data = JSON.parse(req.body)
  erb :cookies
end

get '/muffins' do
  req = HTTParty.get(@@url,{query: {
    query: "muffins",
    number: 3,
    apiKey: ENV["RECIPE_KEY"]
  }
    })
      data = JSON.parse(req.body)
  erb :muffins
end

get '/tryme' do
  erb :tryme
end
