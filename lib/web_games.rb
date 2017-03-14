require 'sinatra'
require_relative 'web_games/guessing'
#require 'sinatra/reloader' if development? 

#session
use Rack::Session::Pool, :expire_after => 2592000

get '/' do
  erb :index, layout: :layout
end

get '/guessing' do
  session[:game] ||= GuessingGame::Game.new
  guess = params['guess'].to_i
 # guess_text = game.player_guess(guess)
  erb :guessing, :locals => {:number => session[:game].number, :guess => guess, :guess_text => game.player_guess(guess)}, layout: :layout
end