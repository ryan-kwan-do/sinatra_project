module GuessingGame
  class Game

  	attr_accessor :number

  	def initialize
  	  @number = rand(100)
  	end

  	def new_game?
  	  true
  	end
  end
end