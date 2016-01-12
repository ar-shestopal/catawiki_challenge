require_relative 'robot'
require_relative 'robots_factory'

class Nasa
  def self.main
    robot1 = RobotsFactory.create('1 2 N', '5 5')
    robot2 = RobotsFactory.create('3 3 E', '5 5')

    puts 'Robot1'
    robot1.trajectory('LMLMLMLMM')
    puts '-----------'

    puts 'Robot2'
    robot2.trajectory('MMRMMRMRRM')
    puts '-----------'


    puts "Robot1 final position = #{robot1.current_position}"
    puts "Robot2 final position = #{robot2.current_position}"
  end
end

Nasa.main
