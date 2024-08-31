class CaesarCipher
  def initialize(original_string)
    @original_string = original_string
    @caesar_cipher_string = caesar_cipher_string
  end

  def caesar_cipher_string
    ccs = ''
    @original_string.each_char do |char|
      if char.match?(/[a-zA-Z]/)
        base = char.ord < 'a'.ord ? 'A'.ord : 'a'.ord
        ccs += ((char.ord - base + 5) % 26 + base).chr
      else
        ccs += char
      end
    end
    ccs
  end

  def display_output
    puts "Original String: #{@original_string}"
    puts "Caesar Ciphered String: #{@caesar_cipher_string}"
  end
end

puts 'Enter the string'
input_string = gets.chomp

caesar_cipher = CaesarCipher.new(input_string)
caesar_cipher.display_output
