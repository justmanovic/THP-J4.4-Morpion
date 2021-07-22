require 'bundler'
Bundler.require

require_relative 'lib/app/positions'
require_relative 'lib/app/player'
require_relative 'lib/app/board'

bienvenue_message = File.read("bienvenue.txt")
print bienvenue_message
puts "Player 1, quel est ton prénom ? \n"
player_1 = Player.new(gets.chomp)
puts "Player 2, quel est ton prénom ? \n"
player_2 = Player.new(gets.chomp)
player_wants_to_play = true

while player_wants_to_play == true
  new_game = Positions.new
  new_board = Board.new(new_game)
  
  while (new_game.table_has_winner? == "") && !new_game.table_is_full?
    Player.all.each do |player|
      if  new_game.table_has_winner? == "" && !new_game.table_is_full?
          system "clear"
          new_board.print_board
          player.move(new_game)
      end
    end
  end

  system("clear")
  if new_game.table_has_winner? != ""
    puts "Le gagnant est"
    puts "*-" *20+"*"
    puts "*"+" "*39+"*"
    puts "*"+"#{new_game.table_has_winner?}".center(39)+"*"
    puts "*"+" "*39+"*"
    puts "*"+"Tu as déglingué ton adversaire !".center(39)+"*"
    puts "*"+" "*39+"*"
    puts "*"+"Bravo à toi !".center(39)+"*"
    puts "*"+" "*39+"*"
    puts "*-" *20+"*"
  else 
    puts "Le gagnant est"
    puts "*-" *20+"*"
    puts "*"+" "*39+"*"
    puts "*"+"What a close game! Match nul !!!".center(39)+"*"
    puts "*"+" "*39+"*"
    puts "*-" *20+"*"
  end

  puts
  puts

  print "Souhaitez-vous recommencer ? (y / toute autre touche)\n >>"


  restart = gets.chomp
  puts restart
  restart == "y" ? player_wants_to_play = true : player_wants_to_play = false


end

puts "A bientôt !"