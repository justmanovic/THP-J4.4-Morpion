#require csv

# commentaires sur la classe
class Player
 attr_accessor :attribut1, :attribut2

  def initialize(attribut1_param, attribut2_param)
    @attribut1 = attribut1_param
    @attribut2 = attribut2_param
  end

  def move
  end

  def won?
  end


  
  def lost?
  end

end
