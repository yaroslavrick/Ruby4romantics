# Procs

# proc для встравивания процедуры потом как блок. 

# You can think of a proc as a “saved” block: just like you can give a bit of 
# code a name and turn it into a method, you can name a block and turn it into 
# a proc. Procs are great for keeping your code DRY, which stands for 
# Don’t Repeat Yourself. With blocks, you have to write your code out each time 
# you need it; with a proc, you write your code once and can use it many times!

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3)
# [3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48, 51, 54, 57, 60, 63, 66, 69, 72, 75, 78, 81, 84, 87, 90, 93, 96, 99]

# Proc Syntax

# Procs are easy to define! You just call Proc.new and pass in the block 
# you want to save. Here’s how we’d create a proc called cube that cubes a 
# number (raises it to the third power):

cube = Proc.new { |x| x ** 3 }

# We can then pass the proc to a method that would otherwise take a block, and we 
# don’t have to rewrite the block over and over!

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]

# (The .collect! and .map! methods do the exact same thing.)

# The & is used to convert the cube proc into a block (since .collect! and .map! 
# normally take a block). We’ll do this any time we pass a proc to a method that 
# expects a block.

 

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!
round_down = Proc.new {|num| num.floor} # The .floor method rounds a float (a number with a decimal) down to the nearest integer.


# Write your code above this line!
ints = floats.collect(&round_down)
print ints
# [1, 3, 0, 7, 11, 482]


# Why Procs?

# Why bother saving our blocks as procs? There are two main advantages:

#     Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
#     Unlike blocks, procs can be called over and over without rewriting them. 
#     This prevents you from having to retype the contents of your block every time 
#     you need to execute a particular bit of code.

#############
# Without proc:
#############
# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

can_ride_1 = group_1.select { |height| height >= 4 }
can_ride_2 = group_2.select { |height| height >= 4 }
can_ride_3 = group_3.select { |height| height >= 4 }

puts can_ride_1
puts can_ride_2
puts can_ride_3

#############
# with Proc: 
#############
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new{|height| height >= 4}

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3

#############
def greeter
  yield
end

phrase = Proc.new{puts "Hello there!"}
puts greeter(&phrase)
#############
# .call
# Unlike blocks, we can call procs directly by using Ruby’s .call method.
# Check it out!
hi = Proc.new {puts "Hello!"}
hi.call

#############
#convert symbols to procs
#############

strings = ["1", "2", "3"]
nums = strings.map(&:to_i) # .map is the same as .collect
# ==> [1, 2, 3]

# By mapping &:to_i over every element of strings, 
# we turned each string into an integer!

#############
#convert symbols to procs
#############

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s)

puts strings_array

#############
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new{|num| num < 100}
youngsters = ages.select(&under_100)

puts youngsters
# [23, 7, 11, 94, 70, 44]
