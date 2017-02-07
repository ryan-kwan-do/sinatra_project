require 'sinatra'
require_relative 'web_games/guessing'
#require 'sinatra/reloader' if development? 

get '/' do
  erb :index, layout: :layout
end

get '/guessing' do
  game = GuessingGame::Game.new
  number = game.number
  erb :guessing, :locals => {:number => number}, layout: :layout
end