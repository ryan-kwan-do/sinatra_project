require 'sinatra'
require_relative 'web_games/guessing'
#require 'sinatra/reloader' if development? 

get '/' do
  erb :index, layout: :layout
end

get '/guessing' do
  erb :guessing, layout: :layout
end