# Попробуем создать двумерный массив и обойти (to traverse) его. Это элементарная
# задача, которая вам может встретиться на интервью: 2D array traversal:

arr = [
  %w[a b c],
  %w[d e f],
  %w[g h i]
]

0.upto(2) do |j|
  0.upto(2) do |i|
    print arr[j][i]
  end
end
puts

puts 'Variant 2:'

# Iterating over each row
arr.each do |row|
  # iterating over each colomn in the row
  row.each do |column|
    print column
  end
end
puts

puts "Задание: обойдите массив выше “вручную”, без помощи циклов, крест-накрест, таким
образом, чтобы вывести на экран строку “aeiceg” (подпрограмма займет 6 строк - по 1
строке для каждого элемента)."

arr = [
  %w[a b c],
  %w[d e f],
  %w[g h i]
]

print arr[0][0]
print arr[1][1]
print arr[2][2]
print arr[0][2]
print arr[1][1]
print arr[2][0]
puts
