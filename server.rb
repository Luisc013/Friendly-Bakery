require 'sinatra'
require './justdesserts.rb'
require 'httparty'


get '/' do
  erb :index
end

get '/cakes' do
<<<<<<< HEAD
  req = HTTParty.get(@@url,{query: {
    query: "cake",
    number: 3,
    apiKey: ENV["RECIPE_KEY"]
  }
    })
  data = JSON.parse(req.body)
=======

>>>>>>> fe2483dcfce95812c58399486e3a3e7b2b9a8372
  erb :cakes
end

get '/cookies' do
<<<<<<< HEAD
  req = HTTParty.get(@@url,{query: {
    query: "cookies",
    number: 3,
    apiKey: ENV["RECIPE_KEY"]
  }
    })
      data = JSON.parse(req.body)
=======
>>>>>>> fe2483dcfce95812c58399486e3a3e7b2b9a8372
  erb :cookies
end

get '/muffins' do
<<<<<<< HEAD
  req = HTTParty.get(@@url,{query: {
    query: "muffins",
    number: 3,
    apiKey: ENV["RECIPE_KEY"]
  }
    })
      data = JSON.parse(req.body)
=======
>>>>>>> fe2483dcfce95812c58399486e3a3e7b2b9a8372
  erb :muffins
end
