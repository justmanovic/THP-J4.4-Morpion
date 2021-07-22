require 'bundler'
Bundler.require

require_relative 'lib/app/positions'
require_relative 'lib/app/player'

# require_relative 'lib/app/NOM_FICHIER_MAIN_CLASS_2_RB'
# require_relative 'lib/app/NOM_FICHIER_MAIN_CLASS_ETC_RB'
# require_relative 'lib/views/NOM_FICHIER_CLASSE_1_RB'
# require_relative 'lib/views/NOM_FICHIER_CLASSE_2_RB'
# require_relative 'lib/views/NOM_FICHIER_CLASSE_ETC_RB'

nouvelle_partie = Positions.new
player_1 = Player.new("Jack")
player_2 = Player.new("Daniels")


while !nouvelle_partie.table_has_winner? && 

end


3.times do
  player_1.move(nouvelle_partie)
  print nouvelle_partie.moves[0]
  puts
  print nouvelle_partie.moves[1]
  puts
  print nouvelle_partie.moves[2]
  puts
  puts nouvelle_partie.table_has_winner?
  puts "---------------------"
  puts player_2.move(nouvelle_partie)
  print nouvelle_partie.moves[0]
  puts
  print nouvelle_partie.moves[1]
  puts
  print nouvelle_partie.moves[2]
  puts
  puts nouvelle_partie.table_has_winner?
  puts "---------------------"
end

