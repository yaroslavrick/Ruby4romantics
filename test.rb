# Ruby program to illustrate defined? keyword

# Variable
radius = 2

area = 3.14 * radius * radius

# Checking if the variable is defined or not
# Using defined? keyword
res1 = defined? radius
res2 = defined? height
res3 = defined? area
res4 = defined? Math::PI

# Displaying results
puts "Result 1: #{res1}"
puts "Result 2: #{res2}"
puts "Result 3: #{res3}"
puts "Result 4: #{res4}"
