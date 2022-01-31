=begin
Besides using .to_sym, you can also use .intern. 
This will internalize the string into a symbol and works just like .to_sym:
=end

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
 symbols.push(s.intern)
end 
print symbols

# hash with sybols:

movies = {
  :toy_story => "cartoon",
  :escape_from => "Hero is planning to escape from the jail"
}
print movies


# Colon style. 
# movies - is a hash (it looks like css)
movies = {
  toy_story: "cartoon",
  escape_from: "Hero is planning to escape from the jail"
}

print movies
# {:toy_story=>"cartoon", :escape_from=>"Hero is planning to escape from the jail"}

# .select
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select do |film, rate|
  rate > 3
end
puts good_movies
# {:primer=>3.5, :the_matrix=>5, :truman_show=>4, :skyfall=>4, :lion_king=>3.5}
    