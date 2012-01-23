class Player
  @health = nil
  def play_turn(warrior)
    @health = warrior.health unless @health
    
    if warrior.feel.enemy?
   	  warrior.attack!
   	else
   	  if warrior.feel.captive?
   	    warrior.resue!
   	  else
   	    if @health > warrior.health
   	      if @health <= 8
   	        warrior.walk! :backward
   	      else
   	        warrior.walk! 
   	      end
   	    else
   	      if @health < 16
   	    	warrior.rest!
   	      else
   	        warrior.walk!
   	      end
   	    end
   	  end
   	end
   	      
    @health = warrior.health
  end
end