require 'spec_helper'

describe Robot do
  before :each do
    @robot = Robot.new
    @robot2 = Robot.new
    @robot3 = Robot.new
    @robot4 = Robot.new
    @robot5 = Robot.new
  end
    describe'#scan'do
    it'display robots that are in the E,W,N,S positions of the robot' do
      @robot2.move_left
      @robot3.move_right
      @robot4.move_up
      @robot5.move_down
      expect(@robot.scan).not_to be_empty
    end
  end







  end