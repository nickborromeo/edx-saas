class RPS
  VALID_STRATEGRY = ["R", "P", "S"]

  def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    raise NoSuchStrategyError unless valid_strategy?(game)

    player1 = game[0]
    player2 = game[1]

    player1_strategy = game[0][1].upcase
    player2_strategy = game[1][1].upcase

    if player1_strategy == player2_strategy
      return player1
    elsif player1_strategy == "R" and player2_strategy == "S"
      return player1
    elsif player1_strategy == "S" and player2_strategy == "P"
      return player1
    elsif player1_strategy == "P" and player2_strategy == "R"
      return player1
    else
      return player2
    end
  end

  def rps_tournament_winner(tournament)
    raise InvalidBracketError unless tournament.length % 2 == 0
    if tournament[0][0].is_a? String
      return rps_game_winner(tournament)
    end

    return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
  end

  private

  def valid_strategy?(game)
    VALID_STRATEGRY.include?(game[0][1].upcase) && VALID_STRATEGRY.include?(game[1][1].upcase)
  end

end

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
class InvalidBracketError < StandardError ; end
