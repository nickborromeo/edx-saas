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

  private

  def valid_strategy?(game)
    VALID_STRATEGRY.include?(game[0][1]) && VALID_STRATEGRY.include?(game[1][1])
  end

end

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
