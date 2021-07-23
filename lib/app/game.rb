require_relative "positions"
require_relative "board"


# commentaires sur la classe
class Game
 attr_accessor :game, :board

  def initialize(game_var,board_var)
    @game = game_var
    @board = board_var
  end

  def start_game(game,board)
    game = Positions.new
    board = Board.new(game)
  end


  def start
  end 

  def is_over?
  end

  def keeps_going?
    !is_over?
  end 

  def end
  end

end
