# Blocks

    #Method 1
    #13.times {puts "I'll study Ruby every day"}
    
    #Method 2
    # 3.times do
    #     puts "I will learn Ruby"
    # end

# Напишем программу “бабушка”. Бабушка каждый месяц будет принимать от нас
# определенную сумму денег и складывать в свой сундучок (надеемся, что бабушка потом
# отдаст нам накопленные средства). Программа должна выводить сколько денег бабушка
# накопит в течение следующих 24 месяцев

# sum = 0
# 24.times do |i| 
# sum = sum + 500 + sum * 0.1 
# puts "Месяц #{i + 1}, денег #{sum} гривны"
# end

# Задание: известно, что стоимость дома - 500 тысяч долларов. Человек берет дом в
# рассрочку на 30 лет. Чтобы выплатить дом за 30 лет, нужно платить 16666 долларов в год
# (это легко посчитать, разделив 500 тысяч на 30). Написать программу, которая для
# каждого года выводит сумму, которую осталось выплатить.

# price_of_house = 500000
# period = 30
# pay_a_month = 16666.666666667
# 30.times do |i|
#     price_of_house = price_of_house - pay_a_month
#     puts "Month #{i+1} it's #{price_of_house} $ left"
# end

# Задание: измените программу из предыдущего задания со следующими условиями:
# человек берет дом не в рассрочку, а в кредит по ставке 4% годовых на оставшуюся
# сумму. Для каждого года посчитайте, сколько денег нужно заплатить за этот год за
# использование кредита.
# puts "Задание: измените программу из предыдущего задания со следующими условиями:
# человек берет дом не в рассрочку, а в кредит по ставке 4% годовых на оставшуюся
# сумму. Для каждого года посчитайте, сколько денег нужно заплатить за этот год за
# использование кредита."
# price_of_house = 500000
# period_years = 30
# pay_a_year = 16666
# tax = 0.04
# 30.times do |i|
#     pay_a_year = price_of_house / (period_years - i)
#     puts "Year # #{i+1} and #{pay_a_year} $ pay in this year"
#     price_of_house = price_of_house - pay_a_year
#     puts "Year #{i+1} it's #{price_of_house} $ left"
#     price_of_house += (price_of_house * tax) 
# end

puts "Задание: посчитайте количество денег (total), которые мы заплатим только в виде
процентов по кредиту за 30 лет."
price_of_house = 500000
period_years = 30
pay_a_year = 16666
tax = 0.04
tax_a_year = 0.0
total = 0.0
30.times do |i|
    # total = tax_a_year 
    pay_a_year = price_of_house / (period_years - i) # определяем сколько надо платить в этом году
    puts "Year # #{i+1} and #{pay_a_year} $ pay in this year"
    price_of_house = price_of_house - pay_a_year # оставшийся общий платеж за дом
    puts "Year #{i+1} it's #{price_of_house} $ left"
    price_of_house += (price_of_house * tax) # добавляем к общему платежу процент кредита за год (4%)
    tax_a_year = price_of_house * tax # сколько денег заплатить в виде процентов за этот год
    total = tax_a_year + total.to_f 
    puts "#{total} $ taxes total for all period "
end
