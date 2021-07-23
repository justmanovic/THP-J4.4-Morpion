#require csv
require 'bundler'
Bundler.require

# commentaires sur la classe
class Positions
 attr_accessor :moves

  def initialize
    # @moves = Array.new(3) {Array.new(3)}
    @moves = [[" ", " ", " "],[" ", " ", " "],[" ", " ", " "]]
  end

  def not_available?(line,col)
    @moves[line][col] != " "
  end

  def table_has_winner?
    tab_victory = [diag_0_completed?, diag_1_completed?, line_0_completed?, line_1_completed?, line_2_completed?, vertical_0_completed?, vertical_1_completed?, vertical_2_completed?]
    return tab_victory.join.delete(" ")
  end

  def check_choice?(line,col)
    return in_board?(line,col) && !not_available?(line,col)
  end

  def in_board?(line,col)
    return line >= 0 && line <=2 && col >= 0 && col <= 2
  end

  def table_is_full?
    i = 0
    @moves.each do |lines|
      lines.each do |cell|
        i += 1 if cell == " "
      end
    end
    return i == 0 ? true : false
  end

  def diag_0_completed?
    (@moves[0][0] == @moves[1][1] && @moves[0][0] == @moves[2][2]) ? @moves[0][0] : " "
    # return @moves[0][0] if @moves[0][0] == @moves[1][1] && @moves[0][0] == @moves[2][2]
  end

  def diag_1_completed?
    (@moves[0][2] == @moves[1][1] && @moves[0][2] == @moves[2][0]) ? @moves[0][2] : " "
    # return @moves[0][2] if @moves[0][2] == @moves[1][1] && @moves[0][2] == @moves[2][0]
  end

  def line_0_completed?
    (@moves[0][0] == @moves[0][1] && @moves[0][0] == @moves[0][2]) ? @moves[0][0] : " "
    # return @moves[0][0] if @moves[0][0] == @moves[0][1] && @moves[0][0] == @moves[0][2]
  end

  def line_1_completed?
    (@moves[1][0] == @moves[1][1] && @moves[1][0] == @moves[1][2]) ? @moves[1][0] : " "
    # return @moves[1][0] if @moves[1][0] == @moves[1][1] && @moves[0][0] == @moves[1][2]
  end

  def line_2_completed?
    (@moves[2][0] == @moves[2][1] && @moves[2][0] == @moves[2][2]) ? @moves[2][0] : " "
    # return @moves[2][0] if @moves[2][0] == @moves[2][1] && @moves[0][0] == @moves[2][2]
  end
  
  def vertical_0_completed?
    (@moves[0][0] == @moves[1][0] && @moves[0][0] == @moves[2][0]) ? @moves[0][0] : " "
  #  f @moves[0][0] == @moves[1][0] && @moves[0][0] == @moves[2][0]
  end
  
  def vertical_1_completed?
    (@moves[0][1] == @moves[1][1] && @moves[0][1] == @moves[2][1]) ? @moves[0][1] : " "
    # return @moves[0][1] if @moves[0][1] == @moves[1][1] && @moves[0][1] == @moves[2][1]
  end

  def vertical_2_completed?
    (@moves[0][2] == @moves[1][2] && @moves[0][2] == @moves[2][2]) ? @moves[0][2] : " "
    # return @moves[0][2] if @moves[0][2] == @moves[1][2] && @moves[0][2] == @moves[2][2]
  end

end

# binding.pry