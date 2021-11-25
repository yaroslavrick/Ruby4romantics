puts "Your salary a month"
salary = gets.to_i
defer_paycheck = 0.15
puts "=" * 80
puts "Your salary per year is #{salary * 12} uah"
puts "You'll defer paycher if it's 15% #{(salary * 12 * defer_paycheck).to_i} uah per year"
puts "You'll defer paycher (if it's 15%) #{((salary * 12 * defer_paycheck)*5).to_i} uah per 5 year"
