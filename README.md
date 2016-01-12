This is a test for Catawiki made by Oleksandr Shestopal
I trryed to make code dry, follow best practices, but keep things simple.

Description

  Problem Objective

  A squad of robotic rovers are to be landed by NASA on a plateau on Mars. 

  This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

  A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

  In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading.

  Assume that the square directly North from (x, y) is (x, y+1).

  INPUT:

  The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.

  The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.

  The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation.

  Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.

  OUTPUT

  The output for each rover should be its final co-ordinates and heading.

  INPUT AND OUTPUT

  Test Input:

  5 5

  1 2 N

  LMLMLMLMM

  3 3 E

  MMRMMRMRRM

  Expected Output:

  1 3 N

  5 1 E
  
Comments:

  To run the program run ruby nasa.rb
  
  To run specs run rspec spec/
  
  You will see an output: 
  
    Robot1
    commands: ["L", "M", "L", "M", "L", "M", "L", "M", "M"]
    initial position: 1 2 N
    rotate: 1 2 E
    move: 0 2 E
    rotate: 0 2 S
    move: 0 1 S
    rotate: 0 1 W
    move: 1 1 W
    rotate: 1 1 N
    move: 1 2 N
    move: 1 3 N
    -----------
    Robot2
    commands: ["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"]
    initial position: 3 3 E
    move: 2 3 E
    move: 1 3 E
    rotate: 1 3 N
    move: 1 4 N
    move: 1 5 N
    rotate: 1 5 W
    move: 2 5 W
    rotate: 2 5 S
    rotate: 2 5 E
    move: 1 5 E
    -----------
    Robot1 final position = 1 3 N
    Robot2 final position = 1 5 E

  As you can see the result for the second robot id different then expected,
  but output proofs that algorithms is correct, as far as I undertand. I
  suspect, there might be a typo in the description. 
