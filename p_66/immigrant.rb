# Задание: напишите программу “иммигрант”. Программа должна задавать следующие
# вопросы: “У вас есть высшее образование? (y/n)”, “У вас есть опыт работы
# программистом? (y/n)”, “У вас более трех лет опыта? (y/n)”. За каждый положительный
# ответ начисляется 1 балл (переменную можно назвать score). Если набралось 2 или
# более баллов программа должна выводить на экран “Добро пожаловать в США”.

puts 'У вас есть высшее образование? (y/n)'
studying = $stdin.gets.chomp.downcase

puts 'У вас есть опыт работы программистом? (y/n)'
dev_experience = $stdin.gets.chomp.downcase

puts 'У вас более трех лет опыта? (y/n)'
three_years_experience = $stdin.gets.chomp.downcase

score = 0

score += 1 if studying == 'y'

score += 1 if dev_experience == 'y'

score += 1 if three_years_experience == 'y'

puts 'Добро пожаловать в США' if score >= 2
