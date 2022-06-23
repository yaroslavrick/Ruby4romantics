puts "Задание: напишите метод, который выводит на экран пароль, но в виде звездочек.
Например, если пароль “secret”, метод должен вывести “Ваш пароль: ******”."

def asterisk(password)
  word = ''
  chars = password.split('')
  chars.each do |letter|
    letter = '*'
    word << letter
  end
  word
end

puts 'Введите пароль:'

password = gets.chomp.to_s

hidden_password = asterisk(password)

puts "Ваш пароль: #{hidden_password}"
