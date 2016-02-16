require 'spec_helper'

describe Battery do
  before :each do
    @battery = Battery.new 
    @robot = Robot.new
  end

  describe'#recharge'do
  it'battery recharges shields' do
    @robot.shields = 0
    @battery.recharge(@robot)
    expect(@robot.shields).to be(50)
  end
end 










end