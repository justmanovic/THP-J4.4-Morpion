#require csv

# commentaires sur la classe
class Game
 attr_accessor :attribut1, :attribut2

  def initialize(attribut1_param, attribut2_param)
    @attribut1 = attribut1_param
    @attribut2 = attribut2_param
  end

  def start
  end 

  def is_over?
  end

  def keeps_going?
    !is_over?
  end 

  def end
  end

end
