require 'spec_helper'


describe Robot do
  before :each do
  @robot = Robot.new
  @robot2 = Robot.new
  @robot3 = Robot.new
  @robot4 = Robot.new
  @robot5 = Robot.new
  end

  describe'.count' do
    it'should return a count of all objects instantiated'do
    expect(Robot.count).to eq(5)
  end
end


  describe'.allrobots' do
    it'should display all the robots instantiated in an array'do
    expect(Robot.all)
  end
end





end