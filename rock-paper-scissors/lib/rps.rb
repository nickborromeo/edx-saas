class RPS
  VALID_STRATEGRY = ["R", "P", "S"]

  def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    raise NoSuchStrategyError unless valid_strategy?(game)

    player1 = game[0]
    player2 = game[1]

    player1_strategy = game[0][1]
    player2_strategy = game[1][1]

    if player1_strategy == player2_strategy
      return player1
    elsif player1_strategy == "R"
      if player2_strategy == "S"
        return player1
      else
        return player2
      end
    elsif player2_strategy == "R"
      if player1_strategy == "S"
        return player2
      else
        return player1
      end
    elsif player1_strategy == "S"
      if player2_strategy == "P"
        return player1
      end
    elsif player2_strategy == "S"
      if player1_strategy == "P"
        return player2
      end
    end
  end

  private

  def valid_strategy?(game)
    VALID_STRATEGRY.include?(game[0][1]) && VALID_STRATEGRY.include?(game[1][1])
  end

end

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
