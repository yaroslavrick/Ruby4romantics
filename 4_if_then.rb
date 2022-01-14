#!/usr/bin/ruby
# IF Methods
# variant 1
def user(name, age)
    if age>18
        puts "#{name}, you're wellcome"
        else
            puts "Too young, #{name}"
    end
end

user("Yarik", 33)

# varian 2 (more shorter)
def user(name, age)
    return puts "#{name}, you're wellcome" if age>18

    puts "Too young, #{name}"
end
user("Julia", 29)

# variant 3 
def user(name, age)
    string=age>18 ? "#{name}, you're wellcome" : "Too young, #{name}" 
    puts string
end
user("Richard", 9)

# variant 4
a = 1
r = case
    when a < 5
      "#{a} less than 5"
    when a > 5
      "#{a} greater than 5"
    else
      "#{a} equals 5"
    end
r

# or

a = 5
case a
when 0...5
  "#{a} greater than 0 less than 5"
when 5
  "#{a} equals 5"
when 5..Float::INFINITY
  "#{a} greater than 5"
else
  "#{a} less than 0"
end