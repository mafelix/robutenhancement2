require 'pry'
class Robot  
  X = 0
  Y = 1
  DEFAULT_ATTACK = 5
  DEFAULT_RANGE = 1
attr_reader :item, :wound, :health
attr_accessor :equipped_weapon 

  def initialize
    @position = [0,0]
    @items = []
    @health = 100
  end


# /////////  attr_writer, attr_reader//////////
  # def equipped_weapon(weapon)
  #   equipped_weapon = weapon
  # end

  # def equipped_weapon
  #   @equipped_weapon
  # end
  def range(enemy)
    dx = (position[X] - enemy.position[X]).abs
    dy = (position[Y] - enemy.position[Y]).abs
    if equipped_weapon
      (dx <= equipped_weapon.range && dy <= equipped_weapon.range) 
    else
      (dx <= DEFAULT_RANGE) && (dy <= DEFAULT_RANGE)
    end
  end

  def discard_weapon
    @equipped_weapon = nil
  end

  def attack(enemy)
    if equipped_weapon.is_a?(Grenade) && range(enemy) && enemy.is_a?(Robot)
      equipped_weapon.hit(enemy)
      discard_weapon
    elsif equipped_weapon && range(enemy) && enemy.is_a?(Robot)
      equipped_weapon.hit(enemy)
    elsif range(enemy) && enemy.is_a?(Robot)
      enemy.wound(DEFAULT_ATTACK)
    elsif !range(enemy)
      false
    else
      raise("You can't attack inanimate objects sucka!")
    end
  end

  def wound(damage)
    @health -= damage
    if @health < 0
      @health = 0
    end
  end

  def heal(amount_healed)
    @health += amount_healed
    if @health > 100
      @health = 100
    elsif @health <= 0
      raise("You can't heal the dead")
    end
  end

  def items_weight
    @items.inject(0) do |result, item| result + item.weight end 
  end
  
  def pick_up(item)
      if item.is_a?Weapon
        @equipped_weapon = item
      elsif item.is_a?(BoxOfBolts) && health <= 80
        item.feed(self)
      elsif items_weight + item.weight <= 250
        @items << item
      end
  end
 
  def position
    @position
  end

  def move_left
    @position[X] -= 1
  end

  def move_right
    @position[X] += 1
  end

  def move_up
    @position[Y] += 1
  end

  def move_down 
    @position[Y] -= 1
  end
  
end
