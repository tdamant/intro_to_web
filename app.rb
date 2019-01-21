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

get '/cat' do
    erb :index
end