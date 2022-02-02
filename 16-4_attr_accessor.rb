# Object-Oriented Programming II
# attr_accessor

# If we want to both read and write a particular variable, there’s an 
# even shorter shortcut than using attr_reader and attr_writer. We can use attr_accessor 
# to make a variable readable and writeable in one fell swoop.

class Person

  attr_accessor :name # shorter shortcut than using attr_reader and attr_writer
  attr_accessor :job
  
  def initialize(name, job)
    @name = name
    @job = job
  end
end