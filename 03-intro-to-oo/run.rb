require 'pry'

class Person

  attr_accessor :name, :surname
  attr_reader :age

  @@all = []



  def initialize(name, surname, age)
    @name = name
    @surname = surname
    @age = age
    @@all << self
  end

  def age=(age)
    if age >= 150
      @age = 149
    else
      @age = age
    end
  end

  def self.all
    @@all
  end

  def say_hello
    "hi, my name is #{self.name}"
  end

  def full_name
    "#{@name} #{@surname}"
  end

  def get_older
    # @age = @age + 1
    @age += 1
  end 

  def self.people_allowed_on_the_boat(age_allowed)
    @@all.select {|person| person.age >= age_allowed }
  end

end

dan = Person.new('dan', 'kaczmarczyk', 27)
lucy = Person.new('lucy', 'mitchell', 29)
oscar = Person.new('oscar', 'oscar', 3)

binding.pry

'eof'
