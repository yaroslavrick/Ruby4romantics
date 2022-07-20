# Первый элемент массива это будет возраст, второй - пол (1 для
# мужчины, 0 для женщины)
arr = [[30, 1], [25, 0], [64, 1], [64, 0], [33, 1]]
men = arr.select do |element|
  element[1] == 1
end
puts men.to_s
puts 'Выбираем (select) мужчин в возрасте 64 лет:'
emeryt = arr.select { |element| element[0] == 64 && element[1] == 1 }
puts emeryt.to_s
