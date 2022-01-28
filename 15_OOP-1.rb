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
  @@people_count = 0
  
  def initialize(name)
    @name = name
    @@people_count += 1    # Increment your class variable
  end
  
  def self.number_of_instances
    @@people_count# Return your class variable
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
# Output: Number of Person instances: 2