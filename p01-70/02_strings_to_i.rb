# Задание 2: напишите программу для подсчета годовой зарплаты. Пользователь вводит
# размер заработной платы в месяц, а программа выводит размер заработной платы в год.
# Допустим, что пользователь каждый месяц хочет откладывать 15% своей зарплаты.
# Измените программу, чтобы она выводила не только размер заработной платы, но и
# размер отложенных за год средств. Измените программу, чтобы она выводила размер
# отложенных средств за 5 лет.

puts "Your salary a month"
salary = gets.to_i #размер зарплаты переводим в integer
puts "How much do you want to defer in % (for ex. 15 %)"
defer_paycheck = gets.to_f # 15% откладываем
defer_paycheck /= 100 
puts "=" * 80 # 80 - standart width of monitors to do strait line
puts "Your salary per year is #{salary * 12} uah"
puts "You'll defer paycher (if it's #{(defer_paycheck * 100).to_i}%) #{(salary * 12 * defer_paycheck).to_i} uah per year"
puts "You'll defer paycher (if it's #{(defer_paycheck * 100).to_i}%) #{((salary * 12 * defer_paycheck)*5).to_i} uah per 5 year"
