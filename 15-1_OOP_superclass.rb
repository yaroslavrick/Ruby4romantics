=begin
                Superclass
On the flip side, sometimes you’ll be working with a derived class (or subclass) 
and realize that you’ve overwritten a method or attribute defined in that class’ 
base class (also called a parent or superclass) that you actually need. Have no fear! 
You can directly access the attributes or methods of a superclass with Ruby’s built-in 
super keyword.

The syntax looks like this:
=end
class DerivedClass < Base
  def some_method
    super(optional args)
      # Some stuff
    end
  end
end

=begin
When you call super from inside a method, that tells Ruby to look in the superclass 
of the current class and find a method with the same name as the one from which super 
is called. If it finds it, Ruby will use the superclass’ version of the method.
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
  def fight 
    puts "Instead of breathing fire..."
    super                                     #takes from superclass
  end
end

# output: "Instead of breathing fire..."
# output: "Punch to the chops!"
###########
=begin
There Can Be Only One!

Any given Ruby class can have only one superclass. Some languages allow a class 
to have more than one parent, which is a model called multiple inheritance. This can 
get really ugly really fast, which is why Ruby disallows it.

However, there are instances where you want to incorporate data or behavior from several 
classes into a single class, and Ruby allows this through the use of mixins. We’ll learn 
about mixins in a later lesson! For now, we’ll demonstrate what happens if you try to do 
multiple inheritance in Ruby.

The demo code we’re about to show you includes a fancy trick: if you want to end a Ruby 
statement without going to a new line, you can just type a semicolon. This means you can 
write something like
=end

class Monkey
end

# on just one line: 

class Monkey; end. 

=begin
This is a time saver when you’re writing something 
very short, like an empty class or method definition.
=end    

class Creature
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name
  end
end

class Dragon < Creature; end
class Dragon < Person; end


# output: superclass mismatch for class Dragon

class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end
my_message = Message.new("Yarik", "Julia")

class Email < Message
  def initialize(from, to)
    super
  end
end

