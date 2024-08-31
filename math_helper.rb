class MathHelper
  def self.square(number)
    number * number
  end

  def double(number)
    number * 2
  end
end

puts MathHelper.square(4)

helper = MathHelper.new
puts helper.double(4)  # Output: 8
