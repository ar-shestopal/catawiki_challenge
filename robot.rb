class Robot
  attr_accessor :x, :y, :heading

  def initialize(x, y, heading, upper_x, upper_y)
    @x, @y, @heading, @upper_x, @upper_y = x, y, heading, upper_x, upper_y
  end

  # Added debugging messages

  def trajectory(commands_string)
    commands = parse_commands(commands_string)
    puts "commands: #{commands}"
    puts "initial position: #{current_position}"
    commands.each do |command|
      if command == 'M'
        move
        puts "move: #{current_position}"
      else
        rotate(command)
        puts "rotate: #{current_position}"
      end
    end
  end

  def move
    case heading
    when 'N' then move_y(1)
    when 'S' then move_y(-1)
    when 'W' then move_x(1)
    when 'E' then move_x(-1)
    end
  end

  def rotate(direction)
    rotate_left if direction == 'L'
    rotate_right if direction == 'R'
  end

  def current_position
    "#{x} #{y} #{heading}"
  end

  private

  def rotate_left
    case heading
    when 'N' then @heading = 'E'
    when 'S' then @heading = 'W'
    when 'W' then @heading = 'N'
    when 'E' then @heading = 'S'
    end
  end

  def rotate_right
    case heading
    when 'N' then @heading = 'W'
    when 'S' then @heading = 'E'
    when 'W' then @heading = 'S'
    when 'E' then @heading = 'N'
    end
  end

  def move_y(step)
    @y += step unless (@y == 0 && step < 0) || (y == @upper_y && step > 0)
  end

  def move_x(step)
    @x += step unless (@x == 0 && step < 0) || (x == @upper_x && step > 0)
  end

  # Parsing methods may be moved to some parser
  # but for simplicity robot will parse commands itself

  def parse_commands(commands_string)
    commands_string.split('')
  end

end
