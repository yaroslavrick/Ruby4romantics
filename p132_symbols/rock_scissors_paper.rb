puts "Задание: напишите игру “камень, ножницы, бумага” (`[:rock, :scissors, :paper]`).
Пользователь делает свой выбор и играет с компьютером."

def win
  puts 'You win'
end

def loose
  puts 'You loose!'
end

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
  puts "User has: #{users_choice}"
  users_choice
end

def print_result(computers_choice, users_choice)
  if users_choice == :rock && computers_choice == :scissors
    win
  elsif users_choice == :scissors && computers_choice == :paper
    win
  elsif users_choice == :paper && computers_choice == :rock
    win
  elsif users_choice == :rock && computers_choice == :paper
    loose
  elsif users_choice == :scissors && computers_choice == :rock
    loose
  elsif users_choice == :paper && computers_choice == :scissors
    loose
  else
    puts 'Tie!'
  end
end

# Game:
game_arr = %i[rock scissors paper]

print '(R)ock, (S)cissors, (P)aper?'
s = gets.strip.capitalize

users_choice = input(s, game_arr)
computers_choice = game_arr.sample
puts "PC has #{computers_choice}"
print_result(computers_choice, users_choice)
