require 'spec_helper'

describe "RPS" do
  describe "#rps_game_winner" do
    let(:rps) { RPS.new }

    it "should raise a WrongNumberOfPlayersError not equal to two" do
      game = [ ["Armando", "P"] ]
      expect { rps.rps_game_winner(game) }.to raise_error(WrongNumberOfPlayersError)
    end

    it "should not raise a WrongNumberOfPlayersError when two players given" do
      game = [ ["Armando", "P"], ["Dave", "S"] ]
      expect { rps.rps_game_winner(game) }.to_not raise_error
    end

    it "should raise a NoSuchStrategyError for invalid strategies" do
      game = [ ["Armando", "X"], ["Dave", "R"] ]
      expect { rps.rps_game_winner(game)}.to raise_error(NoSuchStrategyError)
    end

    it "should not raise a NoSuchStrategyError for strategies" do
      game = [ ["Armando", "P"], ["Dave", "S"] ]
      expect { rps.rps_game_winner(game)}.to_not raise_error
    end
  end
end
