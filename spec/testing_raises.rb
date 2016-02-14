require 'spec_helper'
describe Robot do
  before :each do
    @robot = Robot.new
    @robot2 = Robot.new
  end
  describe "#heal" do
    it "should not heal units that have reached 0 hp" do
      @robot2.health = 0
    expect(@robot2.heal(1)).to be_nil
    end
  end

    describe "#raise" do
      it "robots cannot attack items" do
        pan = Item.new("cooking pan", 10)
      expect(@robot.attack(pan)).to raise_error(RuntimeError)
    end
  end
end
  
