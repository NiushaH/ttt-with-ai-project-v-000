require 'pry'


class Board
  attr_accessor :cells


  def initialize
    reset!
  end


  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------" 
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    puts "-----------"
  end
  
  def position(input)
    #look up the value according to the cells' array index
    cells[input.to_i-1]
  end
  
  def full?
    cells.each { |character| 
  
  binding.pry
      if character == "X" || character == "O"
        true
      else
        false
      end
    }
  end
  
  def update(position, player)
    #represents updating the board when player makes a move
    
    #position user wants to occupy in the form of 1-9 strings that you will need to convert to the board cells' array index
    
    #player object of who's making the move
    
    #update the token method of the player - call it with name space Players::Human or Players::Computer
    
  end 

  def token
    #invoked when saving the update method
    
  end
  
  def full?
    #when entirely occupied by "X"" and "O"s
    
  end
  
  def turn_count
    #how many positions in cells array are filled
    
  end
  
  def taken?
    #returns true or false for a position
  end

  def valid_move?
    #ensures that moves are between 1-9 and not taken(i.e. available)
    
  end
end