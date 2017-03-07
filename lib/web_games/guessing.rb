module GuessingGame
  class Game

  	@@count = 0
  	attr_accessor :number, :count

  	def initialize
  	  @number = rand(100)
  	  @@count += 1
  	end

  	#For returning game counts
  	def self.count
      @@count
  	end

  	def self.new_game?
  	  Game.new if @@count == 0
  	end
  end
end