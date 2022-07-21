# Отсечение элементов по критерию (reject)
# Метод “reject” класса Array работает аналогично “select”, но отсеивает элементы,
# удовлетворяющие критерию.

# Первый элемент массива это будет возраст, второй - пол (1 для
# мужчины, 0 для женщины)
arr = [[30, 1], [25, 0], [64, 1], [64, 0], [33, 1]]

puts 'Отсеять всех мужчин старше 30 лет (и выслать остальным повестку в военкомат):'

soldiers = arr.reject { |el| el[0] >= 30 && el[1] == 1 }
puts soldiers.to_s