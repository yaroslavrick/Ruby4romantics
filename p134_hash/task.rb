puts "Задание: используя инициализированный хеш вида:
```
obj = {
soccer_ball: 410,
tennis_ball: 58,
golf_ball: 45
}
```
Напишите код, который адаптирует этот хеш для условий на Луне. Известно, что вес на
луне в 6 раз меньше, чем вес на Земле."

obj = {
  soccer_ball: 410,
  tennis_ball: 58,
  golf_ball: 45
}

## Destructive method:
# moon = obj.each do |key, value|
#   obj[key] = value / 6
# end

moon = obj.transform_values do |value|
  value / 6
end
puts obj.to_s
puts moon.to_s

puts "Задание: “лунный магазин”. Используя хеш с новым весом из предыдущего задания
напишите программу, которая для каждого типа спрашивает пользователя какое
количество мячей пользователь хотел бы купить в магазине (ввод числа из консоли). В
конце программа выдает общий вес всех товаров в корзине. Для сравнения программа
должна также выдавать общий вес всех товаров, если бы они находились на Земле."

answer = ''
quantity = 0
sum_weight = 0
moon.each do |ball, weight|
  answer = ''
  quantity = 0
  loop do
    puts "Buy #{ball}? y/n"
    answer = $stdin.gets.chomp.downcase
    break if %w[y n].include?(answer)
  end

  if answer == 'y'
    while quantity == 0
      puts "How many #{ball}?"
      quantity = $stdin.gets.chomp.to_i
    end
  end
  sum_weight += (quantity * weight)
end
puts "общий вес всех товаров в корзине: #{sum_weight}"
puts "Если бы вы их купили на Земле, то вес бы составил: #{sum_weight * 6}"
