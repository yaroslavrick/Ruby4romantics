#!/usr/bin/ruby

#############
# Blocks
# A block is code that is passed to a method by using of either curly braces, 
# {...}, or do…end syntax. It’s common convention to use {...} for single line blocks, 
# and do...end for multi-line blocks, but curly braces have higher precedence.
#############

# Using blocks
def double(p1)
  yield(p1*2)
end

double(3) { |val| "I got #{val}" }
# => "I got 6"

double('tom') do |val|
  "Then I got #{val}"
end
# => "Then I got tomtom"

#############

def triple(p3)
    yield(p3*3)
end
triple(9) {|per| "У нас произошло умножение на 3 и число: #{per}"}
triple("Yarik") {|val| "У нас val вместо per и вышло: #{val}"} # как не назови |название| - не важно
end

#############
# Using blocks
#############

def try
  if block_given?
    yield
  else
    'no block'
  end
end

try
# => "no block"

try { 'hello' }
# => "hello"

try do 'hello' end
# => "hello"

#############
# Closures - замыкания
#############
def thrice
  yield
  yield
  yield
end

x = 5

puts "value of x before: #{x}"
# => "value of x before: 5"

thrice { x += 1 }

puts "value of x after: #{x}"
# => "value of x after: 8"

#############
# Convert the block to a Proc (прок - єто у нас объект)
#############

def thrice
  yield
  yield
  yield
end

def seven_times(&block) # block - it's a proc
  block.call # calling proc/obj
  thrice(&block)
  thrice(&block)
end

x = 4

seven_times { x += 10 }
# => 74

#############
def what_am_i(&block)
  block.class
end

what_am_i {}
# => Proc

#############
# Proc aka procedure

# variant 1 via Proc.new
square = Proc.new do |n|
  n ** 2
end

square.call(2)
# => 4

square.call(4)
# => 16

# variant 2 via proc
square = proc do |n|
  n ** 2
end

square.call(2)
# => 4

#############
# Anonymous
bo = lambda do |param|
  "You called me with #{param}"
end

bo.call(99)
# => "You called me with 99

#var 2 calling lambda with -> 

bo = ->(param) { "You called me with #{param}" }

bo.call(99)
# => "You called me with 99"

square.call(4)
# => 16


#############
# Proc vs lambda
# Lambdas check the number of arguments
#############
def args(code)
  one, two = 1, 2
  code.call(one, two)
end

args(Proc.new{ |a, b, c| puts "Give me a #{a} and b #{b} and c #{c}"})
# Give me a 1 and b 2 and c

args(lambda{ |a, b, c| puts "Give me a #{a} and b #{b} and c #{c}"})
# => ArgumentError: wrong number of arguments (2 for 3)


#############
# Lambdas have lesser returns - ниже приоритет выхода (return) с функции 
def proc_return
  Proc.new { return 'Proc.new' }.call
  return 'proc_return return'
end

def lambda_return
  lambda { return 'lambda' }.call
  return 'lambda_return return'
end

proc_return
# => "Proc.new"

lambda_return
# => "lambda_return return"

#############
# Method to object

def square(n)
  n ** 2
end

square_obj = method(:square)

square_obj.class
# => Method

square_obj.call(4)
# => 16

#############
# ! - change the current object (bang,  exclamation mark)
movie = 'Ghostbusters'
# => "Ghostbusters"

movie.reverse
# => "sretsubtsohG"

movie
# => "Ghostbusters"

movie.reverse!
# => "sretsubtsohG"

movie
# => "sretsubtsohG"