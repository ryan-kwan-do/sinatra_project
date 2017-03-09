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
  erb :guessing, :locals => {:number => session[:game].number}, layout: :layout
end