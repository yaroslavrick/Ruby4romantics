
=begin

    The Case Statement

Good work! Now we’ll want to create the main body of our program: 
the case statement, which will decide what actions to take based on what the user types in.

if and else are powerful, but we can get bogged down in ifs and elsifs if we have a lot 
of conditions to check. Thankfully, Ruby provides us with a concise alternative: the case statement. 
    The syntax looks like this:

case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

The else is what the case statement will do if it doesn’t match any of its when
statements to the case (in this case, the value of language).

=end

movies = {
  StarWars: 4.8,
  matrix: 3.9, 
  Divergent: 4.7
  }

puts "What would you like to do? "

puts "  --type in add to add the movie"
puts "  --type update to update the hash"
puts "  --type display to look in what we have"
puts "  --type delete to remove title"

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i # add update to hash
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What movie would you like to update? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "That movie does not exist."
  else
    puts "What is the new rating? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end
when "display"
  movies.each do |title, rating| 
    puts "#{title}: #{rating}"
  end
when "delete"
  puts "What title do you want to remove?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Error: there's no such title"
    else
     movies.delete(title.to_sym)
     puts "#{title} deleted"
    end
else
  puts "Error!"
end

# Case variant long
puts "What's your favorite language?"
language = gets.chomp

case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

# Case variant concise
case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end