puts "Задание: напишите игру “камень, ножницы, бумага” (`[:rock, :scissors, :paper]`).
Пользователь делает свой выбор и играет с компьютером."

# Methods:

def input(s, game_arr)
  if s == 'R'
    users_choice = game_arr[0]
  elsif s == 'S'
    users_choice = game_arr[1]
  elsif s == 'P'
    users_choice = game_arr[2]
  else
    puts 'Usage: R or S or P'
    exit
  end
  #   puts "User has: #{users_choice}"
  users_choice
end

def show_cards(user, pc)
  puts "You have #{user}, PC has #{pc}"
end
# Main app:

print '(R)ock, (S)cissors, (P)aper?'
s = gets.strip.capitalize

arr = %i[rock scissors paper]
users_choice = input(s, arr)
computers_choice = arr[rand(0..2)]

matrix = [
  %i[paper rock win_one],
  %i[rock paper win_two],
  %i[rock scissors win_one],
  %i[scissors rock win_two],
  %i[scissors paper win_one],
  %i[paper scissors win_two],
  %i[rock rock draw],
  %i[paper paper draw],
  %i[scissors scissors draw]
]

matrix.each do |item|
  next unless item[0] == users_choice && item[1] == computers_choice

  show_cards(item[0], item[1])
  if item[2] == :win_one
    puts 'You win!'
  elsif item[2] == :win_two
    puts 'You loose!'
  else
    puts 'Draw!'
  end
  exit
end
