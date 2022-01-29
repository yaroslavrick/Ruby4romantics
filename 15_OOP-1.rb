=begin
            Object-Oriented Programming I
What's in a @name?

All right! Just one more step before we can create a person from our Person class: 
we have to make sure each person has a @name.

In Ruby, we use @ before a variable to signify that it’s an instance variable. 
This means that the variable is attached to the instance of the class. 
=end
class Car
  def initialize(make, model) 
    @make = make
    @model = model
  end
end
 
kitt = Car.new("Pontiac", "Trans Am")
=begin
The code in the example above creates an instance, kitt, of the class Car. 
kitt has his own @make (“Pontiac”) and @model (“Trans Am”). Those variables belong 
to the kitt instance, which is why they’re called instance variables.
=end

=begin
                Scope it Out

Another important aspect of Ruby classes is scope. The scope of a variable is 
the context in which it’s visible to the program.

It may surprise you to learn that not all variables are accessible to all parts 
of a Ruby program at all times. When dealing with classes, you can have variables 
that are available everywhere (global variables), ones that are only available 
inside certain methods (local variables), others that are members of a certain 
class (class variables), and variables that are only available to particular 
instances of a class (instance variables).

The same goes for methods: some are available everywhere, some are only available 
to members of a certain class, and some are only available to particular instance 
objects.

=end

=begin
Check out the code in the editor. See how some variables start with $, @, or @@? 
This helps mark them as global, instance, and class variables (respectively). 

$ - global variable
@ instance variable, переменная экземпляра 
@@ - class variable
=end
class Computer
  $manufacturer = "Mango Computer, Inc." # global variable
  @@files = {hello: "Hello, world!"} # class variable
  
  def initialize(username, password)
    @username = username # instance variable
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.


#####################
#                                    @@ - class variable
#   Twice the @, Twice as Classy
#                   Counting persons

class Person
  @@people_count = 0 # declaring class variable @@ 
  
  def initialize(name)
    @name = name
    @@people_count += 1    # Increment your class variable
  end
  
  def self.number_of_instances
    @@people_count# Return your class variable. Место для хранения переменной класса
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
# Output: Number of Person instances: 2

#####################
# Inheritance   Наследование

=begin
Inheritance is the process by which one class takes on the attributes and methods 
of another, and it’s used to express an is-a relationship. For example, a cartoon 
fox is a cartoon mammal, so a CartoonFox class could inherit from a CartoonMammal class. 
=end

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError # Inheritance. You can read “<“ as “inherits from.
end

err = SuperBadError.new
err.display_error
 
=begin
Check out the code in the editor. We’ve defined a class, ApplicationError, as 
well as a SuperBadError class that inherits from ApplicationError. Note that we 
don’t define the display_error method in the body of SuperBadError, but it will still 
have access to that method via inheritance.
=end

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight      # Give your derived class a fight method that overrides Creature‘s; instead of returning “Punch to the chops!”, it should return “Breathes fire!”.               
    return "Breathes fire!"
  end
end
################################################


class Machine
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password # so that your @@users hash keeps usernames as keys with each username’s password as the associated value.
    @files = {} # instance variable and set this to an empty hash. This is so we can keep track of our files later!
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234) # we create a new instance of Machine
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"

=begin
Who are the Users?

Perfect! Now that we think of it, though, we could have a whole bunch of users creating
files every which where, and we don’t have a way of getting to our @@users class variable! 
We’ll need to create a method to reach it.

Because @@users is a class variable, we’ll use a class method to grab it. 
Most of the methods you’ve seen so far are instance methods—they work on a 
particular instance/object, such as “matz” or “blixy”. A class method belongs 
to the class itself, and for that reason, it’s prefixed with the class name.
=end
class Machine
  def Machine.hello
    puts "Hello from the machine!"
  end
end