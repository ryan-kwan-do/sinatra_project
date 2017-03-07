require 'sinatra'
require_relative 'web_games/guessing'
#require 'sinatra/reloader' if development? 

get '/' do
  erb :index, layout: :layout
end


GAME = GuessingGame::Game.new
number = GAME.number
get '/guessing' do
  erb :guessing, :locals => {:number => number}, layout: :layout
end