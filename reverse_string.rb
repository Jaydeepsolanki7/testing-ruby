class ReverseString
  def initialize(orignal_string)
    @orignal_string = orignal_string
    @reverse_string = reverse_string
  end

  def reverse_string
    reverse = ''
    length = @orignal_string.length - 1

    while length >= 0
      reverse += @orignal_string[length]
      length -= 1
    end
    reverse
  end

  def display_reverse_string
    puts "#orignal string = #{@orignal_string}"
    puts "reversed string = #{@reverse_string}"
  end
end

print 'Enter the string: '
input_string = gets.chomp
rev = ReverseString.new(input_string)
rev.display_reverse_string
