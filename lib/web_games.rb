require 'sinatra'
#require 'sinatra/reloader' if development? 

get '/' do
  erb :index, layout: :layout
end

get '/guessing' do
  erb :guessing, layout: :layout
end