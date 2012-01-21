class Player
  def play_turn(warrior)
    if warrior.feel.enemy?
      warrior.attack!
    else
      if warrior.health <= 14
        warrior.rest!
      else
      warrior.walk!
      end
    end
  end
end
