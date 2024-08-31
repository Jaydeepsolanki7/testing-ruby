class Temperature
  def initialize(celsius)
    @celsius = celsius
  end

  def fahrenheit
    @celsius * 9.0 / 5 + 32
  end

  def celsius=(value)
    @celsius = value
  end
end

temp = Temperature.new(25)
puts temp.fahrenheit

temp.celsius = 30
puts temp.fahrenheit
