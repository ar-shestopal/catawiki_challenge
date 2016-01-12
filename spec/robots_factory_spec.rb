require 'rspec'
require_relative '../robot'
require_relative '../robots_factory'

RSpec.describe RobotsFactory do

  it 'should get create robot' do
    robot = RobotsFactory.create('1 2 N', '5 5')

    expect(robot.x).to eq 1
    expect(robot.y).to eq 2
    expect(robot.heading).to eq 'N'
  end
end
