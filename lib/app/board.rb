#require csv

require_relative "positions"

class Board
 attr_accessor :running_game

  def initialize(running_game_var)
    @running_game = running_game_var
  end

  def print_board
    puts " "+"-"*29
    puts "|"+" "*9+"|"+" "*9+"|"+" "*9+"|"
    puts "|"+" "*4 + self.running_game.moves[0][0]+" "*4+"|"+" "*4+self.running_game.moves[0][1]+" "*4+"|"+" "*4+self.running_game.moves[0][2]+" "*4+"|"
    puts "|"+" "*9+"|"+" "*9+"|"+" "*9+"|"
    puts " "+"-"*29
    puts "|"+" "*9+"|"+" "*9+"|"+" "*9+"|"
    puts "|"+" "*4+ self.running_game.moves[1][0]+" "*4+"|"+" "*4+self.running_game.moves[1][1]+" "*4+"|"+" "*4+self.running_game.moves[1][2]+" "*4+"|"
    puts "|"+" "*9+"|"+" "*9+"|"+" "*9+"|"
    puts " "+"-"*29
    puts "|"+" "*9+"|"+" "*9+"|"+" "*9+"|"
    puts "|"+" "*4+self.running_game.moves[2][0]+" "*4+"|"+" "*4+self.running_game.moves[2][1]+" "*4+"|"+" "*4+self.running_game.moves[2][2]+" "*4+"|"
    puts "|"+" "*9+"|"+" "*9+"|"+" "*9+"|"
    puts " "+"-"*29
  end

end
