class CLI 
  
  def self.game_type
    print "Please choose the mode of game which you would like to play:
      0 = Computer against itself,
      1 = You against the computer,
      2 = You and another human.
      "
    
    gets.strip.to_i
    
    if input = 0 
      Game.new(@player1 = Players::Computer.new("X"), @player2 = Players::Computer.new("O")).start
    elsif input = 1
      Game.new(@player2 = Players::Computer.new("O")).start
    else input = 2 
      Game.new.start
    end 
    
 end
end 
  