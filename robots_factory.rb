require_relative 'robot'

module RobotsFactory
  class << self
    def create(coordinates_string, upper_bounds_string)
      x, y, heading = parse_coordinates(coordinates_string)
      upper_x, upper_y = parse_upper_bounds(upper_bounds_string)
      Robot.new(x, y, heading, upper_x, upper_y)
    end

    private

    def parse_coordinates(coordinates_string)
      result = []
      coordinates = coordinates_string.split(' ')
      result << coordinates[0].to_i
      result << coordinates[1].to_i
      result << coordinates[2]
      result
    end

    def parse_upper_bounds(upper_bounds_string)
      result = []
      coordinates = upper_bounds_string.split(' ')
      result << coordinates[0].to_i
      result << coordinates[1].to_i
      result
    end
  end
end
