#require './web_games'
#run Sinatra::Application
# frozen_string_literal: true
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'web_games'
run Sinatra::Application
