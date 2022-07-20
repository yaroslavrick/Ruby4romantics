puts "Задание: к вам обратился предприниматель Джон Смит. Джон говорит, что его бизнес
специализируется на создании телефонных номеров для рекламы. Они хотят подписать с
вами контракт, но прежде хотелось бы убедиться, что вы хороший программист, можете
работать с их требованиями, и доставлять качественное программное обеспечение.
Они говорят: у нас есть номера телефонов с буквами. Например, для бизнеса по продаже
матрасов существует номер “555-MATRESS”, который транслируется в “555-628-7377”.
Когда наши клиенты набирают буквенный номер на клавиатуре телефона (см.картинку
ниже), он транслируется в цифровой. Напишите программу, которая будет переводить
(транслировать) слово без дефисов в телефонный номер."

def phone_to_number(phone)
  alphabet = [[], [], %w[A B C], %w[D E F], %w[G H I], %w[J K L], %w[M N O], %w[P Q R S], %w[T U V], %w[W X Y Z]]
  #   phone.each_char do |char|
  #     char == "M"
  #     ascii = char.ord
  #     # If numbers (48-57)
  #     if ascii > 47 && ascii < 58
  #       print  char
  #     #   If letters
  #     else
  #       print alphabet.index(alphabet.detect { |row| row.include?(char) })
  #     end
  #   end
  phone.each_char do |char|
    if alphabet.detect { |row| row.include?(char) }
      print alphabet.index(alphabet.detect { |row| row.include?(char) })
    else
      print char
    end
  end
  print
end

puts phone_to_number('555MATRESS') # должно напечатать 5556287377
