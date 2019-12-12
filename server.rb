require 'sinatra'

get '/' do
  puts "welcome to friendlies"
  erb :index
end
