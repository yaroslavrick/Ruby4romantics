class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number

=begin

Going Public

Methods are public by default in Ruby, so if you don’t specify public or private, your methods 
will be public. In this case, however, we want to make it clear to people reading our code which 
methods are public. We do this by putting public before our method definitions, like so:

=end

class ClassName
  # Some class stuff
  public
  def public_method
    # public_method stuff
  end
end

=begin


Note that everything after the public keyword through the end of the class definition will 
now be public unless we say otherwise. (We’ll say otherwise in the next exercise.)

=end
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end
  public  # public method works till the "end" keyword
  def bark
    puts "Woof!"
  end
end