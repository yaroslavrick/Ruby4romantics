# Задание: создайте массив 5 на 4 и заполните весь массив абсолютно случайными
# значениями от 0 до 9.

arr1 = Array.new(5) { Array.new(4).map { rand(0..9) } }
# arr2 = Array.new(4) { Array.new(5) { rand(1..5) } }
puts arr1.to_s
