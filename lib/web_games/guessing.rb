module GuessingGame
  class Game

  	attr_accessor :number

  	def initialize
  	  @number = rand(100)
  	end
  end
end