puts "“Однорукий бандит”.
Положим деньги в банк, дернем виртуальную ручку и посмотрим на результат."
puts "Задание: определите метод, который будет вычислять случайный номер с анимацией
(используйте sleep со случайной задержкой). Примените анимацию к переменным “x”, “y”,
“z”."

def animate_number(face)
  9.times do
    print "#{face.sample}\r"
    sleep rand(0.05..0.1)
  end
end
print 'Напишіть Ваш вік:'
age = gets.chomp.to_i

if age < 18
  puts 'Ви занадто юні для цієї гри'
  exit
end

balance = 20
# https://emojipedia.org/
cherry = '🍒'
strawberry = '🍓'
kiwi = '🥝'
bells = '🔔'
seven = '7️'
faces = [cherry, strawberry, kiwi, bells, seven]

def randomizer(arr)
  arr.sample
end

loop do
  puts 'Натисніть Enter, щоб розпочати:'
  gets

  x = randomizer(faces)
  y = randomizer(faces)
  z = randomizer(faces)

  # puts "#{animate_number(x)} #{animate_number(y)} #{animate_number(z)}"
  # animate_number(faces)
  # animate_number(faces)
  # animate_number(faces)

  puts "Результат розіграшу: #{animate_number(faces)} #{x} #{y} #{z}"

  if x == bells && y == bells && z == bells
    balance = 0
    puts 'Ваш баланс обнулён :('
  elsif x == kiwi && y == kiwi && z == kiwi
    balance += 10
    puts 'Баланс увеличился на 10 долларов'
  elsif x == seven && y == seven && z == seven
    balance += 20
    puts 'Баланс увеличился на 20 долларов'
  elsif x == strawberry && y == strawberry && z == strawberry
    balance += 30
    puts 'Баланс увеличился на 30 долларов'
  elsif x == cherry || y == cherry || z == cherry
    puts 'в ряду - 🍒: «нулевой выигрыш», то есть возвращение сделанной ставки на счёт игрока.'
  else
    balance -= 0.5
    puts 'Баланс уменьшился на 50 центов'
  end

  puts "Ваш баланс: #{balance} $"
end
