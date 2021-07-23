require 'bundler'
Bundler.require

require_relative '../app/positions'
require_relative '../app/player'
require_relative '../../app'

# class Affichage
    
#     attr_accessor

#     def initialize

#     end

    def affichage_debut_partie(game)
        bienvenue_message = File.read("bienvenue.txt")
        print bienvenue_message
        puts "Player 1, quel est ton prénom ? \n"
        player_1 = Player.new(gets.chomp)
        puts "Player 2, quel est ton prénom ? \n"
        player_2 = Player.new(gets.chomp)
    end
    
    def affichage_vainqueur(game)
        puts "Le gagnant est"
        puts "*-" *20+"*"
        puts "*"+" "*39+"*"
        puts "*"+"#{game.table_has_winner?}".center(39)+"*"
        puts "*"+" "*39+"*"
        puts "*"+"Tu as déglingué ton adversaire !".center(39)+"*"
        puts "*"+" "*39+"*"
        puts "*"+"Bravo à toi !".center(39)+"*"
        puts "*"+" "*39+"*"
        puts "*-" *20+"*"
    end
    
    def affichage_nul
        puts "*-" *20+"*"
        puts "*"+" "*39+"*"
        puts "*"+"What a close game! Match nul !!!".center(39)+"*"
        puts "*"+" "*39+"*"
        puts "*-" *20+"*"
      end
    

# end



