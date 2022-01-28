# Lambda

# Like procs, lambdas are objects. The similarities don’t stop there: 
# with the exception of a bit of syntax and a few behavioral quirks, 
# lambdas are identical to procs.

# Check out the code in the editor. See the lambda bit? Typing

# lambda { puts "Hello!" }

# Is just about the same as

# Proc.new { puts "Hello!" }

# In the example to the right, when we pass the lambda to lambda_demo, 
# the method calls the lambda and executes its code.

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

#########

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda {|par| par.to_sym} # Lambda here converts string to symbol

symbols = strings.collect(&symbolize)
print symbols
# [:leonardo, :donatello, :raphael, :michaelangelo]

#######################
# Достаем из массива "символы"
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]


symbol_filter = lambda{|ar| ar.is_a? Symbol }
symbols = my_array.select(&symbol_filter)

puts symbols
# [:kettles, :mittens, :packages]

#########
# 
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

int_lambda = lambda{|ar| ar.is_a? Integer}
ints = odds_n_ends.select(&int_lambda)
puts ints

############

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda{|hash, name| name < "M"}
a_to_m = crew.select(&first_half)

puts a_to_m
# Output {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}

