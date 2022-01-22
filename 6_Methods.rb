#!/usr/bin/ruby
# 
# Methods
# 


# 'Goonies has a rank of 10'
# 'Ghostbusters has a rank of 9'
# 'Goldfinger has a rank of 8'

def movie_listing(title, rank = 5)   # def - определяет метод через системное слово def. () - аргументы
  "#{title.capitalize} has a rank of #{rank}"
end

movie_listing('goonies', 10)
# => "Goonies has a rank of 10"

movie_listing('ghostbusters', 9)
# => "Ghostbusters has a rank of 9"

movie_listing('goldfinger')
# => "Goldfinger has a rank of 5"

#
#
def the_beatle (name, instrument = 'vocal')
  "#{name} plays on #{instrument}"
end
the_beatle("ringo")
the_beatle("george", 'guitar')

#############
# Definition
#############

def my_method
  # Code for the method would be here
end

def my_method_with_arguments(arg1, arg2, arg3)
  # Code for the method would be here
end
######
def cool_dude(arg1 = 'Miles', arg2 = 'Coltrane', arg3 = 'Roach')
  "#{arg1}, #{arg2}, #{arg3}"
end

cool_dude
# => "Miles, Coltrane, Roach"

cool_dude('Bart')
# => "Bart, Coltrane, Roach"

cool_dude('Bart', 'Elwood')
# => "Bart, Elwood, Roach"

cool_dude('Bart', 'Elwood', 'Linus')
# => "Bart, Elwood, Linus"

#############
# Arguments
#############

def var_args(a, b, c=1, *d, e, f) # "*" - makes array
  puts "required a #{a}"
  puts "required b #{b}"
  puts "optional c #{c}"
  puts "argument array d #{d.inspect}"
end

var_args(1,2,3,4,5,6,7,8,9)
# required a 1
# required b 2
# optional c 3
# argument array d [4, 5, 6, 7]
# => nil


#############
#Return values
#############

def meth_one
  'one'
end

meth_one
# => "one"

def meth_two(arg)
  if arg > 0
    'positive'
  elsif arg < 0
    'negative'
  else
    'zero'
  end
end

meth_two(23)
# => "positive"

meth_two(0)
# => "zero"

#############
#Return values
#############

def meth_three
  100.times do |num|
    square = num * num

    return num if square > 1000 # "return" возвращает num если..
  end
end

meth_three
# => 32

#############
# определение натурального числа методом
def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)

#############
# Splat
=begin 
The solution: splat arguments. Splat arguments are arguments preceded by a *, 
which tells the program that the method can receive one or more arguments. 
=end

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

#############
# return

def add (n1,n2)
  return n1+n2
end

puts add(19,1)

#############
def double(n)
  return n * 2
end
 
output = double(6)
output += 2
puts output

#
def by_five?(n)
  return n % 5 == 0
end
#
def greeter(name)
  return "Greeting, #{name}"
end

greeter("Vasia")

#############
# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}" # [x] x - это позиция буквы в строке как в массиве
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"
####