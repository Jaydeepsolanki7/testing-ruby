class Shape
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def calculate_area
    puts "Area is: #{@length} and #{@breadth}"
  end
end

class Square < Shape
  def calculate_area
    puts "Area of Square is #{@length * @length}"
  end
end

class Rectangle < Shape
  def calculate_area
    puts "Area of Rectangle is #{@length * @breadth}"
  end
end

square = Square.new(2, 3)
square.calculate_area

reactangle = Rectangle.new(2, 3)
reactangle.calculate_area
