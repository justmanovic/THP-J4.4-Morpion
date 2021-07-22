#require csv
require 'bundler'
Bundler.require

require_relative 'positions'

# commentaires sur la classe
class Player
 attr_accessor :name #:symbol
 @@all = []

  def initialize(name_to_save)
    @name = name_to_save
    # @attribut2 = attribut2_param
    @@all << self
  end
  
  def self.all
    return @@all
  end

  def move(partie_en_cours)
      puts "#{@name}, quelle ligne choisis-tu ?"
      print " > "
      choice_l = gets.chomp.to_i
      puts "#{@name}, quelle colonne choisis-tu ?"
      print " > "
      choice_c = gets.chomp.to_i
      
      while !partie_en_cours.check_choice?(choice_l,choice_c) do
        puts "ouvre les yeux, bordel!!"
        puts "Je te redonne une chance... je suis bien bon !!"
        puts "#{@name}, quelle ligne choisis-tu ?"
        print " > "
        choice_l = gets.chomp.to_i
        puts "#{@name}, quelle colonne choisis-tu ?"
        print " > "
        choice_c = gets.chomp.to_i
        puts choice_c
      end

      partie_en_cours.moves[choice_l][choice_c] = @name

      # partie_en_cours.new_move(choice_l,choice_c, self)

  end

  
  def lost?
  end

end

# binding.pry