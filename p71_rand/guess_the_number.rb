puts 'Угадай число'
number = rand(1..1_000_000)
puts 'Привет! Я загадал число от 1 до 1_000_000, попробуйте угадать:'

loop do
  input = gets.to_i

  if input == number
    puts "Congrats! You guessed the number, it was #{number}!"
    exit
  elsif input > number
    puts 'Искомое число меньше вашего ответа'
  elsif input < number
    puts 'Искомое число больше вашего ответа'
  else
    print "No it's not #{input}. Try again:"
  end
end
