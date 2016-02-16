require 'spec_helper'

describe Robot do 
  before :each do
    @robot = Robot.new
    @robot2 = Robot.new
  end

  describe 'shields' do
    it "robots start with 50 shields" do
      expect(@robot.shields).to be(50)
    end
  end

  describe 'shields' do
    it "robots that take damage should have shields deducted before health" do
      (@robot2.attack(@robot))
      expect(@robot.shields).to be(45)
    end
  end


  
end