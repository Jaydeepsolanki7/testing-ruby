class Person
  attr_accessor :name, :age, :gender

  def person_info(name, age, gender)
    puts "My name is #{name} \nMy age is #{age}\nMy gender is #{gender}"
  end
end

p = Person.new

p.person_info(p.name = 'Jay', p.age = 23, p.gender ="Male")
