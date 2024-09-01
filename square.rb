require_relative 'math_operation'

class Square
  include MathOperation
end

s = Square.new
puts s.square(4)
