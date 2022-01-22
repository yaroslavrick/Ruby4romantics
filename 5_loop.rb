i = 0

loop do
  i += 1

  next if i == 5 # беру следующее і 

  print "#{i} "

  break if i == 10
end

# Method While

i = 1

while i < 11
  print " '#{i} '"

  i += 1
end

# Like do…while

i = 11

begin
  print "#{i} "

  i += 1
end while i < 10 #выражение выполнится хотя бы раз, а потом выйдет если не соответствует параметру while
# => 11

# Until (до того как)

i = 1

until i > 10
  print "#{i} "

  i += 1
end
# => 1 2 3 4 6 7 8 9 10

# For
for i in 1..10
  print "#{i} "
end
# => 1 2 3 4 6 7 8 9 10

# Each
[1,2,3,4,5,6,7,8,9,10].each { |value| print "#{value} " }
# => 1 2 3 4 6 7 8 9 10

# Times
10.times { |i| print "#{i} " }
# => 0 1 2 3 4 6 7 8 9

# Upto
1.upto(10) { |i| print "#{i} " }
# => 1 2 3 4 6 7 8 9 10

########### for
puts "For loop: "
for i in 1..5
  next if i % 2 == 0
  puts i
end