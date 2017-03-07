require 'sinatra'
require_relative 'web_games/guessing'
#require 'sinatra/reloader' if development? 

get '/' do
  erb :index, layout: :layout
end

get '/guessing' do
#right now, every time you load /guessing it says 'make a new game'. Move it!
  game = GuessingGame::Game.new
  number = game.number
  erb :guessing, :locals => {:number => number}, layout: :layout
end