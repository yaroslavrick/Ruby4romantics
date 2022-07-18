# Makind 2d array (10x10):
arr = Array.new(10) { Array.new(10) }

# Создать массив в 2 строки и 3 столбца и заполнить каждую строку одинаковым объектом
# “something”:
arr = Array.new(2) { Array.new(3, 'something') }

# Крестики-нолики:
arr = [
  [0, 0, 1],
  [nil, 0, nil],
  [1, nil, 1]
]

puts arr.to_s
# [[0, 0, 1], [nil, 0, nil], [1, nil, 1]]

