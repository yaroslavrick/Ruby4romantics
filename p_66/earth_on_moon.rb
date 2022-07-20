# Задание: известно, что на Луне продают участки. Любой участок менее 50 квадратных
# метров стоит 1000 долларов. Участок площадью от 50 до 100 квадратных метров стоит
# 1500 долларов. От 100 и выше - по 25 долларов за квадратный метр. Напишите
# программу, которая запрашивает длину и ширину участка и выводит на экран его
# стоимость.
puts 'land <50 m2 = 1000 $/land'
puts 'land >= 50m2 <100m2 = 1500$/land'
puts 'land >= 100m2 = 25$/m2'
puts
puts 'What size do you want to buy land on the Moon?'
size = $stdin.gets.chomp.to_i

price = if size < 50
          1000
        elsif size >= 50 && size < 100
          1500
        else
          size * 25
        end

puts "Land will cost you #{price} $"
