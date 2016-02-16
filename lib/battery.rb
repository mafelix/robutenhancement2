class Battery < Item
  attr_accessor :recharge
  def initialize
    super('Batteries', 25)
  end


  def recharge(target)
    target.shields = 50
  end


end