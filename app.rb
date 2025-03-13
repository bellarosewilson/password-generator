require 'sinatra'
require 'sinatra/reloader' if development?
require 'securerandom'
require 'net/http'
require 'json'

get '/' do
  erb :index
end

get '/generate_password' do
  # Generate a 15-character password with special characters
  @password = SecureRandom.base64(15).gsub(/[^a-zA-Z0-9!@#$%^&*]/, '')

  # API call to fetch a Yo Momma joke
  joke_api_url = URI('https://yomomma-api.herokuapp.com/')
  response = Net::HTTP.get(joke_api_url)

  # Parse the response and extract the joke
  begin
    @joke = JSON.parse(response)['joke']
  rescue
    @joke = "Couldn't fetch a joke. Try again later."
  end

  erb :result
end
