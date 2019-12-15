require 'sinatra'
require './justdesserts.rb'

get '/' do
  erb :index
end

get '/info' do
  erb :info
end

get '/cakes' do
  erb :cakes
end

get '/cookies' do
  erb :cookies
end

get '/cupcakess' do
  erb :cupcakes
end
