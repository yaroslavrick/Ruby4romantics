puts "Your salary a month"
salary = gets.to_i
defer_paycheck = 0.15
puts "Your salary per year is #{salary * 12} $"
puts "You'll defer paycher if it's 15% #{salary * 12 * defer_paycheck} per year"
