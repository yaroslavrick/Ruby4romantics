=begin
                                Blocks, Procs, and Lambdas
Quick Review


1.  A block is just a bit of code between do..end or {}. 
    It’s not an object on its own, but it can be passed to methods 
    like .each or .select.

2.  A proc is a saved block we can use over and over.

3.  A lambda is just like a proc, only it cares about the number of arguments 
    it gets and it returns to its calling method rather than returning immediately.

=end


#                   BLOCK:
#
# A Ruby block is just a bit of code that can be executed. 
# Block syntax uses either do..end or curly braces ({}), like so:

5.times do |string| 
  puts "I'm a block!"
end

# The collect method takes a block and applies the expression in the block 
# to every element in an array. Check it out:

my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]

### 
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

doubled_fibs = fibs.collect {|num| num*2}
puts doubled_fibs
# [2, 2, 4, 6, 10, 16, 26, 42, 68, 110]

#############
