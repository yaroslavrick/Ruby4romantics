=begin
Lambdas vs. Procs

If you’re thinking that procs and lambdas look super similar, that’s because they are! 
There are only two main differences.

First, a lambda checks the number of arguments passed to it, while a proc does not. 
This means that a lambda will throw an error if you pass it the wrong number of arguments, 
whereas a proc will ignore unexpected arguments and assign nil to any that are missing.

Second, when a lambda returns, it passes control back to the calling method; 
when a proc returns, it does so immediately, without going back to the calling method.

To see how this works, take a look at the code in the editor. 
Our first method calls a proc; the second calls a lambda.

Instructions
Run to see the return values. See how the proc says Batman will win? 
This is because it returns immediately, without going back to the batman_ironman_proc method.

Our lambda, however, goes back into the method after being called, 
so the method returns the last code it evaluates: "Iron Man will win!"
=end

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

# Batman will win!
# Iron Man will win!

##
def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

# Iron Man will win!

###########
def proc_demo_method
  proc_demo = Proc.new { return "Only I print!" }
  proc_demo.call
  "But what about me?" # Never reached
end
 
puts proc_demo_method 
# Output 
# Only I print!
 
# (Notice that the proc breaks out of the method when it returns the value.)
 
def lambda_demo_method
  lambda_demo = lambda { return "Will I print?" }
  lambda_demo.call
  "Sorry - it's me that's printed."
end
 
puts lambda_demo_method
# Output
# Sorry - it's me that's printed.
 
# (Notice that the lambda returns back to the method in order to complete it.)

# Proc vs lambda

#     Lambdas check the number of arguments 

def args(code)
  one, two = 1, 2
  code.call(one, two)
end

args(Proc.new{ |a, b, c| puts "Give me a #{a} and b #{b} and c #{c}"})
# Give me a 1 and b 2 and c

args(lambda{ |a, b, c| puts "Give me a #{a} and b #{b} and c #{c}"})
# => ArgumentError: wrong number of arguments (2 for 3)

# Proc vs lambda

#     Lambdas have lesser returns 

def proc_return
  Proc.new { return 'Proc.new' }.call #  код дальше не пойдет так как return
  return 'proc_return return'
end

def lambda_return
  lambda { return 'lambda' }.call # т.к. у лямбды ниже важность ретурна, то код пойдет на след строку
  return 'lambda_return return'
end

proc_return
# => "Proc.new"

lambda_return
# => "lambda_return return"

# Proc vs lambda
# Conclusion

#     blocks and Procs act like code snippets
#     lambdas and Methods act like methods

