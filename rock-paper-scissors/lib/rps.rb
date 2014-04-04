class RPS
  VALID_STRATEGRY = ["R", "P", "S"]

  def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    raise NoSuchStrategyError unless valid_strategy?(game)
  end

  private

  def valid_strategy?(game)
    VALID_STRATEGRY.include?(game[0][1]) && VALID_STRATEGRY.include?(game[1][1])
  end

end

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
