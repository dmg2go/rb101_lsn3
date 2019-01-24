# => RB101

# => Lesson 3
# => Practice Problems 
# => Easy 1

# => 1.
[1, 2, 3]

# => 2.
=begin
! and ? have different meanings in different contexts. 
When ! is the last character of a method name, it usually infers that the method mutates the calling object.
When ? is the last character of a method name, it usually infers the method returns a boolean value.

When ! is encountered before an operator, it signals the inversion of the opporator. Equals to becomes not = to.
When ! is encountered before a variable, it inverts the value of the variable, 
  and all expressions are truthy, except nil and false, meaning any expression can be inverted.

When ? is encountered before or after a token other than a method name, it has no special meaning.

? is also used in the ternary operator, which is a terse syntax for expressing an if/else statement.
The format of the ternary operator is thus: if_expression ? if_true_return_this : else_return_this 

=end


# => 3.

advice = "Few things in life are as important as house training your pet dinosaur."

advice.sub!('important', 'urgent')

p advice

ary = ''

advice.split.map! do |w|
  p w
  if w == 'important'
    ary << 'urgent '
  else
    ary << "#{w} "
  end
end

p ary
advice = ary.strip

p advice

# => 4.
# => delete_at removes the element at the index passed as arg. It is destructive w/o !.
# => delete() removes the object that equals the arg, or nil if none found. It is destructive w/o !.

# => 5.
(10..100).include?(42) ? 'yes by include?' : 'no'
(10..100).include?(42) ? 'yes by cover?' : 'no'
(10..100).include?(42) ? 'yes by member?' : 'no'

# => 6.
famous_words = "seven years ago..."
p famous_words
famous_words.prepend("(by prepend) Four score and ")
famous_words.insert(0, "(by insert) Four score and ")
p famous_words
famous_words.gsub!("(by insert) ", '')
p famous_words
famous_words.gsub!("(by prepend) ", '')
p famous_words
famous_words.gsub!("Four score and ", '')
p famous_words

# => 7.

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }


p "1. how_deep is: #{how_deep}"

p "2. eval(how_deep) is: #{eval(how_deep)}"


# => 8.
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!
p flintstones

# => 9.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
ary = flintstones.assoc("Barney")
p ary
p flintstones



# => RB101

# => Practice Problems 
# => Lesson 3 
# => Easy2

# => 1.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.any?('Spot') # =>  false
ages.fetch('Spot', 'not found') # => 'not found'
ages.has_key?('Spot') # => false
ages.include?('Spot') # => false
ages.member?('Spot') # => false
ages.include?('Spot') # => false

# => 2.

munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase!
p munsters_description.capitalize!
p munsters_description.downcase!
p munsters_description.upcase!


# => 3.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
ages.update(additional_ages)


# => 4.

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?('Dino') # returns true or false, still can be tricked on substrings
advice.match("Dino")  # does find "dino", returns MatchData on hit, nil on miss
advice.match?("Dino") # returns true or false, still can be tricked on substrings

#   => 5.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# => 6.

flintstones << "Dino"
flintstones.push("Dino")
flintstones.append("Dino")

# => 7.

flintstones.concat(%w(Dino Hoppy))


# => 8.

advice.slice!("Few things in life are as important as ")


# => 9.

statement = "The Flintstones Rock!"
statement.count('t')

#   => 10.

title = "Flintstone Family Members"
title.center(40)






# => RB101
# => jan 23, 2019
# => Practice Problems 3 
# => Medium 1

# => 1.

10.times{|i| p Array.new(i, " ").join('.') << "The Flintstones Rock!"}


# => 2.

'strign' << 4.to_s

s = "string #{40 + 2}"


# => 3.

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end # until divisor == 0
  factors
end

p factors(20)


# => 4.
=begin
  the symbols '+' and '<<' are not really operators - they are instance methods of the Array class.
  The diff between the two methods is that + does not mutate the caller while << does.
  The two methods are different in a manner that respects the distinction of the two methods. 
  the method using << mutates the object passed as an arg to the method, the other does not. 
  
=end


# => 5.

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"


# => 6.

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# meh


# => 7.

# 34 


# => 8.

#the Hash.values method returns a new array of values - does not mutate the calling hash - wrong

# => 9. paper

# => 10.  no


# => RB101
# => jan 24, 2019
# => Practice Problems 
# => Lesson 3 
# => Medium 2

# => 1.
# @addd some changess



# => 2.
