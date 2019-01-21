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

# get '/named-cat' do
#   p params
#   @name = params[:name]
#   erb :cat_form
# end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end
