#require csv
require 'bundler'
Bundler.require

require_relative 'positions'

# commentaires sur la classe
class Player
 attr_accessor :name

  def initialize(name_to_save)
    @name = name_to_save
    # @attribut2 = attribut2_param
  end

  def move(partie_en_cours)
      puts "#{@name}, quelle ligne choisis-tu ?"
      print " > "
      choice_l = gets.chomp.to_i
      puts choice_l
      
      puts "#{@name}, quelle colonne choisis-tu ?"
      print " > "
      choice_c = gets.chomp.to_i
      puts choice_c
      
      # print partie_en_cours.moves[0][0]
      # print partie_en_cours
      # partie_en_cours.moves[0][0] = self.name
      # print partie_en_cours

      partie_en_cours.moves[choice_l][choice_c] = @name

      # partie_en_cours.new_move(choice_l,choice_c, self)

  end

  def won?
  end


  
  def lost?
  end

end

# binding.pry