arr = []
loop do
  puts 'Введите имя и телефон человека (Enter для окончания ввода):'
  input = gets.chomp
  break if input.empty?

  arr << input
  # arr.push(input)
end

puts 'Ваша записная книжка: '
arr.sort.each do |line|
  puts line
end
