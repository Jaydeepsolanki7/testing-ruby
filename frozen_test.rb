class Box
  def initialize(height, width)
    @height = height
    @width = width
  end
  
    def getHeight
      @height
    end

  def getWidth
    @width
  end

  def setHeight=(value)
    @height = value
  end

  def setWidth=(value)
    @width = value
  end
end

box = Box.new(10, 20)
box.freeze

if (box.frozen?)
  puts 'Box is forzen and box'
else
  puts 'Box is not frozen'
end

box.setHeight = 30
box.setWidth  = 40

x = box.getWidth
y = box.getHeight

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
