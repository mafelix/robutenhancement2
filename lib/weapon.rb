class Weapon < Item
  attr_reader :damage, :name, :weight
  
  def initialize(name, weight, damage)
    @name = name
    @weight = weight
    @damage = damage  
  end

  def hit(enemy)
    enemy.wound(damage)
  end  


end