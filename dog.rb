# frozen_string_literal: true

class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def display_info
    puts "I am #{@name} and I am from #{@breed}"
    can_walk
  end

  private

  def can_walk
    puts "#{@name} i can run"
  end
end

dog1 = Dog.new('Tiger', 'German')
dog1.display_info
