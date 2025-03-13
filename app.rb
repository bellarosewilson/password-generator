require 'sinatra'
require 'sinatra/reloader' if development?
require 'securerandom'
require 'net/http'
require 'json'

get '/' do
  erb :index
end

get '/generate_password' do
  @password = SecureRandom.base64(15).gsub(/[^a-zA-Z0-9!@#$%^&*]/, '')
  
  joke_api_url = URI('https://api.yomomma.info/')
  response = Net::HTTP.get(joke_api_url)
  @joke = JSON.parse(response)['joke'] rescue "Couldn't fetch a joke. Try again later."

  erb :result
end
