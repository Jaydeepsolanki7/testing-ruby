require_relative 'math_operation'
class Cube
  extend MathOperation
end

c = Cube.cube(3)
puts c