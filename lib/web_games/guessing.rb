module GuessingGame
  class Game

  	@@count = 0
  	attr_accessor :number, :count, :turns

  	def initialize
  	  @number = rand(100)
  	  @turns = 0
  	  @@count += 1
  	end

  	#For returning game counts
  	def self.count
      @@count
  	end

  	def self.new_game?
  	  Game.new if @@count == 0
  	end

  	#if guess is too high, return too high
  	def player_guess(guess)
  	  if guess == 0 then ""
  	  	elsif guess != number then "Wrong!"
  	  	else "Right!" 
	  end
  	end

  end
end