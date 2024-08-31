class BubbleSort
  def initialize(original_array)
    @original_array = original_array
    @sorted_array = sort_array
  end

  def sort_array
    sorted_array = @original_array.dup
    n = sorted_array.length
    (n - 1).times do
      (n - 1).times do |i|
        if sorted_array[i] > sorted_array[i + 1]
          sorted_array[i], sorted_array[i + 1] = sorted_array[i + 1], sorted_array[i]
        end
      end
    end
    sorted_array
  end

  def display_output
    puts "Original Array: #{@original_array}"
    puts "Sorted Array: #{@sorted_array}"
  end
end

input_array = [12, 3, 7, 4, 2, 11, 6]
bs = BubbleSort.new(input_array)
bs.display_output
