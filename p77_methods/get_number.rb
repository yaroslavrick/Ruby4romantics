# age = gets.to_i

def get_number(what)
  puts "Введите #{what}:"
  gets.to_i
end

age = get_number('возраст')
salary = get_number('зарплату')

puts age, salary
