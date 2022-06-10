
# Before refactoring
require 'prime'   # This is a module. We'll cover these soon! Prime - натуральное число

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  return Prime.first n
end
# first_n_primes(10)

# After refactoring:
########################
# FORMULA:
# action if boolean
# action unless boolean
########################
equire 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0 
  Prime.first n                       # here we ca do without "return" 
end

first_n_primes(10)