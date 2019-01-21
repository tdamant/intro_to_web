require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "secret message"
end

get '/test' do
  "test"
end

get '/sample' do
  "sample"
end

get '/named-cat' do
  @name = params[:name]
  erb :index
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end
