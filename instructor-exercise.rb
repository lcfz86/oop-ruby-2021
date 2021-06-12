class Instructor
  attr_reader :name, :age
  attr_writer :name, :age

  def initialize(name, age, university)
    @name = name
    @age = age
    @university = university
  end
end

instructor1 = Instructor.new('Joseph', 35, 'SIA')
  puts "Instructor name is #{instructor1.name}"
  puts "Instructor age is #{instructor1.age}"
  puts "let's change the name and age instructor."
  instructor1.name = 'Jacob'
  instructor1.age = '40'
  puts "The new instructor name is #{instructor1.name}"
  puts "The new instructor age is #{instructor1.age}"
