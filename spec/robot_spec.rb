require 'rspec'
require_relative '../robot'

RSpec.describe Robot do
  before(:each) do
    @robot = Robot.new(1, 2, 'N', 5, 5)
  end

  it 'should get initial coordinates' do
    expect(@robot.x).to eq 1
    expect(@robot.y).to eq 2
    expect(@robot.heading).to eq 'N'
  end

  it 'should move' do
    @robot.move
    expect(@robot.y).to eq 3
  end

  it 'should rotate' do
    @robot.rotate('L')
    expect(@robot.heading).to eq 'E'
  end

  it 'sould have trajectory' do
    @robot.trajectory('LML')
  end
end
