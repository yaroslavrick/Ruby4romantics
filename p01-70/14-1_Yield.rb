# Learning to Yield

# Why do some methods accept a block and others don’t? 
# It’s because methods that accept blocks have a way of transferring control 
# from the calling method to the block and back again. 
# We can build this into the methods we define by using the yield keyword.

# Yield - для встраивания блока в метод. То есть "{}" in def-end using yield.

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield # transfered here a block {}
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }
puts "#########################################"
# Yielding With Parameters

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }


puts "#########################################"
#######################
def greeter
  yield
end

phrase = Proc.new{puts "Hello there!"}
puts greeter(&phrase)