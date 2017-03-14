require 'spec_helper'

module GuessingGame
  	describe Game do
  		let(:game) {Game.new}
  	  
  	describe '#initialize' do
  	  it 'creates a game with a random number' do
  	  	expect(game.number).to be_within(50).of(50)
  	  end
      it 'increases count of games' do
        expect(Game.count).to eq(1)
      end
    end

    describe '#new_game?' do
      it 'only initializes if game does not exist' do
        expect(Game.new_game?).to be nil
      end
    end

  	describe '#player_guess' do
      it 'returns text based on the guess' do
        expect(game.player_guess(5)).to be_instance_of(String)
      end
    end
  end
end