class Player
  @health = nil
  def play_turn(warrior)
    @health = warrior.health unless @health
    if warrior.feel.captive?
      warrior.rescue!
    else
    if warrior.feel.enemy?
      warrior.attack!
    else
      if warrior.health <= 14
        if warrior.health < @health
          if warrior.feel.enemy?
            warrior.attack!
          end
          warrior.walk!
        else
          warrior.rest!
        end
      else
      warrior.walk!
      end
    end
    end
    @health = warrior.health
  end
end
