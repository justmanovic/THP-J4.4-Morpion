#require csv
require 'bundler'
Bundler.require

# commentaires sur la classe
class Positions
 attr_accessor :moves

  def initialize
    # @moves = [[nil]*3]*3
    # @moves = [["", "", ""], ["", "", ""], ["", "", ""]]
    @moves = Array.new(3) {Array.new(3)}
  end

  # def new_move(choice_l,choice_c, player)
  #   @moves[choice_l][choice_c] = player.name
  #   # if @moves[choice_l].is_empty?
  #   #   @moves[choice_l][choice_c] = player 
  #   # end
  #   print @moves
  #   puts
  # end

  # def is_empty?(case)
  #   @moves[case]
  # end

  def table_has_winner?
    tab_victory = [diag_0_completed?, diag_1_completed?, line_0_completed?, line_1_completed?, line_2_completed?, vertical_0_completed?, vertical_1_completed?, vertical_2_completed?]
    tab_victory.each do |test_result|
      test_result != nil ? (return test_result) : (return nil)
    end
  end

  def table_is_full?
    i = 0
    @moves.each do |lines|
      lines.each do |cell|
        i += 1 if cell == ""
      end
    end

    return i == 0 ? true : false
    
  end

  def diag_0_completed?
    return @moves[0][0] if @moves[0][0] == @moves[1][1] && @moves[0][0] == @moves[2][2]
  end

  def diag_1_completed?
    return @moves[0][2] if @moves[0][2] == @moves[1][1] && @moves[0][2] == @moves[2][0]
  end

  def line_0_completed?
    return @moves[0][0] if @moves[0][0] == @moves[0][1] && @moves[0][0] == @moves[0][2]
  end

  def line_1_completed?
    return @moves[1][0] if @moves[1][0] == @moves[1][1] && @moves[0][0] == @moves[1][2]
  end

  def line_2_completed?
    return @moves[2][0] if @moves[2][0] == @moves[2][1] && @moves[0][0] == @moves[2][2]
  end
  
  def vertical_0_completed?
    return @moves[0][0] if @moves[0][0] == @moves[1][0] && @moves[0][0] == @moves[2][0]
  end
  
  def vertical_1_completed?
    return @moves[0][1] if @moves[0][1] == @moves[1][1] && @moves[0][1] == @moves[2][1]
  end

  def vertical_2_completed?
    return @moves[0][2] if @moves[0][2] == @moves[1][2] && @moves[0][2] == @moves[2][2]
  end

end

# binding.pry