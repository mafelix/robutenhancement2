require 'spec_helper'

describe Robot do
  before :each do
  @robot = Robot.new
  @robot2 = Robot.new
  @robot3 = Robot.new
  @robot4 = Robot.new
  end

  describe'.in_position' do
    it 'displays all robots in the parameter coordinates' do
      @robot.move_up
      expect(Robot.in_position(0,0)).to match_array [@robot2, @robot3, @robot4]
    end
  end




end