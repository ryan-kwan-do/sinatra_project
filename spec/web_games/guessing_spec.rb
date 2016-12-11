require 'spec_helper'

module GuessingGame
  	describe Game do
  		let(:game) {Game.new}
  	  
  	describe '#initialize' do
  	  it 'creates a game with a random number' do
  	  	expect(game.number).to be_within(50).of(50)
  	  end
  	end

  	describe '#user_guess'
  end
end