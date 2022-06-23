puts "one\rtwo"

puts "Задание: с помощью символов “/”, “-”, “\”, “|” сделайте анимацию - индикатор загрузки.
Если выводить эти символы по-очереди на одном и том же месте, возникает ощущение
вращающегося символа."

puts 'Formatting hard drive:'
1_000.times do
  print "|\r"
  sleep rand(0.05..0.5)
  print "/\r"
  sleep rand(0.05..0.5)
  print "-\r"
  sleep rand(0.05..0.5)
  print "|\r"
  sleep rand(0.05..0.5)
  print "\\\r"
  sleep rand(0.05..0.5)
end
