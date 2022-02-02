# Object-Oriented Programming II
# What's a Module?

# You can think of a module as a toolbox that contains a set methods and constants. 
# There are lots and lots of Ruby tools you might want to use, but it would clutter 
# the interpreter to keep them around all the time. For that reason, we keep a bunch of 
# them in modules and only pull in those module toolboxes when we need the constants 
# and methods inside!

# You can think of modules as being very much like classes, only modules can’t create 
# instances and can’t have subclasses. They’re just used to store things!
# Instructions

# Check out our example module in the editor. See how it has an approximation of pi 
# stored in PI and a series of methods for calculating the circumference and area of a 
# circle?

module Circle # Круг

  PI = 3.141592653589793
  
  def Circle.area(radius) # площадь Кругa
    PI * radius**2
  end
  
  def Circle.circumference(radius) # длина окружности
    2 * PI * radius
  end
end


# Module Syntax

# You can pull in pre-existing modules (we’ll show you how soon!), but you can also make 
# your own. Modules are super easy to make! You just use the module keyword, like so:

module ModuleName # module names are written in CapitalizedCamelCase
  # Bits 'n pieces
end

# Like class names, module names are written in CapitalizedCamelCase, rather than 
# lowercase_with_underscores.

# It doesn’t make sense to include variables in modules, since variables (by definition) 
# change (or vary). Constants, however, are supposed to always stay the same, so including 
# helpful constants in modules is a great idea.

# Ruby doesn’t make you keep the same value for a constant once it’s initialized, but it 
# will warn you if you try to change it. Ruby constants are written in ALL_CAPS and are 
# separated with underscores if there’s more than one word.

# An example of a Ruby constant is PI, which lives in the Math module and is approximately 
# equal to 3.141592653589793. We created our own PI in the previous exercise, but don’t 
# worry: because they’re in separate modules, Ruby knows to keep them separate.

module MyLibrary
  FAVE_BOOK = "Bible" # Ruby constants are written in ALL_CAPS and are separated with underscores if there’s more than one word
end

#                           Scope resolution operator

# One of the main purposes of modules is to separate methods and constants into named spaces. 
# This is called (conveniently enough) namespacing, and it’s how Ruby doesn’t confuse Math::PI and Circle::PI.

# See that double colon we just used? That’s called the scope resolution operator, which is a fancy way of 
# saying it tells Ruby where you’re looking for a specific bit of code. 
# If we say Math::PI, Ruby knows to look inside the Math module to get that PI, not any other PI 
# (such as the one we created in Circle).

# Use the scope resolution operator to puts the value of PI from the Math module to the console:

puts Math::PI # scope resolution operator

#               A Few Requirements

# require

# Some modules, like Math, are already present in the interpreter. Others need to be explicitly brought in, 
# however, and we can do this using require. We can do this simply by typing

require 'module'

# We want to use the Ruby Date module to show today’s date, but we haven’t required it yet!

require 'date'

puts Date.today

# => 2022-01-31



# Feeling Included
#                               include
# We can do more than just require a module, however. We can also include it!

# Any class that includes a certain module can use those module’s methods!

# A nice effect of this is that you no longer have to prepend your constants 
# and methods with the module name. Since everything has been pulled in, you 
# can simply write PI instead of Math::PI.

class Angle
  include Math          # include is better then Math::PI
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine

