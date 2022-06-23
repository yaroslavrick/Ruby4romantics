# Эмулятор судного дня
# Для закрепления знаний давайте напишем эмулятор судного дня. Машины захватили
# мир, идет борьба за выживание. Кто выживет человечество или машины - покажет
# судьба. Точнее, генератор случайных чисел.

# Для начала условимся, что людей и машин осталось поровну: по 10000 с каждой стороны.
# В каждом цикле программы будет происходить одно случайное событие. И с одинаковой
# долей вероятности число людей или машин будет убавляться. Победа наступает в том
# случае, когда или людей, или машин не осталось. Приступим.

########################################
# ОПРЕДЕЛЯЕМ ПЕРЕМЕННЫЕ
########################################
@humans = 10
@machines = 10

########################################
# ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ
########################################

# Метод возвращает случайное значение: true или false
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    puts "#{diff} машин уничтожено"
  else
    @humans -= diff
    puts "#{diff} людей погибло"
  end
end

def machines_repaired
  @repaired = rand(1..2)
  @machines += @repaired
  # print @repaired.to_s
end

def humans_healed
  @survives = rand(1..2)
  @humans += @survives
end

# Метод возвращает случайное название города
def random_city
  dice = rand(1..5)

  case dice
  when 1
    'Київ'
  when 2
    'Варшава'
  when 3
    'Лондон'
  when 4
    'Вашингтон'
  else
    'Берлін'
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

########################################
# СОБЫТИЯ
########################################
def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
end

def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Группа солдат пробивает оборону в городе #{random_city}"
  random_sleep
  boom
end

def event4
  puts "Была применена дальнобойная артиллерия по окресностям города #{random_city}"
  random_sleep
  boom
end

def event5
  machines_repaired
  puts "Было отремонтировано часть разрушенных машин #{@repaired}"
end

def event6
  humans_healed
  puts "Удалось достать живыми из-под обломков #{@survives} людей"
end

def born
  diff = rand(1..5)
  if luck?
    @machines += diff
    puts "#{diff} машин построено"
  else
    @humans += diff
    puts "#{diff} людей родилось"
  end
end

########################################
# ПРОВЕРКА ПОБЕДЫ
########################################
def check_victory?
  if @humans == 0 || @humans.negative?
    puts 'Человечество не выжило :( Машины победили..'
    true
  elsif @machines == 0 || @machines.negative?
    puts 'Все машины уничтожены. Человечество обрело еще один шанс!'
    true
  else
    false
  end
end

########################################
# ГЛАВНЫЙ ЦИКЛ
########################################

loop do
  exit if check_victory?
  # ..

  dice = rand(1..6)

  case dice
  when 1
    event1
  when 2
    event2
  when 3
    event3
  when 4
    event4
  when 5
    event5
  else
    event6
  end

  stats
  random_sleep
  born
  random_sleep
end
