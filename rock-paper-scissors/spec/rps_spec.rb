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

    it "should return first player when they use the same strategy" do
      game = [ ["Armando", "R"], ["Dave", "R"] ]
      rps.rps_game_winner(game).should == ["Armando", "R"]
    end

    it "R should win when given R and S" do
      game = [ ["Armando", "R"], ["Dave", "S"] ]
      rps.rps_game_winner(game).should == ["Armando", "R"]
    end

    it "R should win when given S and R" do
      game = [ ["Armando", "S"], ["Dave", "R"] ]
      rps.rps_game_winner(game).should == ["Dave", "R"]
    end

    it "P should win when given R and P" do
      game = [ ["Armando", "R"], ["Dave", "P"] ]
      rps.rps_game_winner(game).should == ["Dave", "P"]
    end

    it "P should win when given P and R" do
      game = [ ["Armando", "P"], ["Dave", "R"] ]
      rps.rps_game_winner(game).should == ["Armando", "P"]
    end

    it "S should win when given S and P" do
      game = [ ["Armando", "S"], ["Dave", "P"] ]
      rps.rps_game_winner(game).should == ["Armando", "S"]
    end

    it "S should win when given P and S" do
      game = [ ["Armando", "P"], ["Dave", "S"] ]
      rps.rps_game_winner(game).should == ["Dave", "S"]
    end

    it "should be case insensitive" do
      game = [ ["Armando", "p"], ["Dave", "s"] ]
      rps.rps_game_winner(game).should == ["Dave", "s"]
    end
  end

  describe "#rps_tournament_winner" do
    let(:rps) { RPS.new }

    let(:bracket) {
      [
        [
          [ ["Armando", "P"], ["Dave", "S"] ],
          [ ["Richard", "R"],  ["Michael", "S"] ],
        ],
        [
          [ ["Allen", "S"], ["Omer", "P"] ],
          [ ["David E.", "R"], ["Richard X.", "P"] ]
        ]
      ]
    }

    it "should not accept a bracket with an odd number of groups" do
      odd_bracket =
        [
          [
            [ ["Armando", "P"], ["Dave", "S"] ],
            [ ["Richard", "R"],  ["Michael", "S"] ],
          ]
        ]
      expect { rps.rps_tournament_winner(odd_bracket) }.to raise_error(InvalidBracketError)
    end

    it "can find the winner in a single group" do
      group =
        [
          [ ["Armando", "P"], ["Dave", "S"] ],
          [ ["Richard", "R"],  ["Michael", "S"] ],
        ]
      rps.rps_tournament_winner(group).should == ["Richard", "R"]
    end

    it "solves a two level tournament" do
      rps.rps_tournament_winner(bracket).should == ["Richard", "R"]
    end
  end

end
