require 'bundler'
Bundler.require

require_relative 'lib/app/positions'
require_relative 'lib/app/player'
require_relative 'lib/app/board'


new_game = Positions.new
new_board = Board.new(new_game)
puts "Player 1, quel est ton prénom ? \n"
player_1 = Player.new(gets.chomp)
puts "Player 2, quel est ton prénom ? \n"
player_2 = Player.new(gets.chomp)

puts new_game.table_has_winner? == ""
puts !new_game.table_is_full?

while new_game.table_has_winner? == "" && !new_game.table_is_full?
  Player.all.each do |player|
    if  new_game.table_has_winner? == ""
        system "clear"
        new_board.print_board
        player.move(new_game)
    end
  end
end

puts "Le gagnant est #{new_game.table_has_winner?}"

