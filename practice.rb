# => RB101 Programming Foundations
# => Lesson 3
# => Practice Problems
# => January 24, 2019
# => David George 
# => dmg2go@gmail.com


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

=begin
This llustrates that variables hold pointers to object_id values, 
and that local vars instantiated inside a method definition only have scope within method, 
while local vars instantiated outside a method def are visiable within the method def.

An assignment can copy the value of the pointer to a new variable, and multiple variables can 
point to the same object. 

A variable can be assigned a new pointer to a different object. 

That some types of objects, like integer numbers, are singleton objects - 
having a single persistent instance.

Reference to an object_id by an out of scope reference throws an exception - 
  ** undefined local variable or method ** ...

=end
var_init_out_of_method_def = "Aha!"

def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  puts "\n"
  # NFG
  # puts var_init_out_of_method_def
  puts "\n"
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  puts "\n"

  1.times do
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
    puts "\n"

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
    puts "\n"


    a_inner = a_outer
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts "\n"
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
  puts "\n"

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "\n"
  puts "\n"
end

fun_with_ids


# => 2.


def fun_with_ids_2
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  puts "\n"

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)


  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call."
  puts "\n"

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "\n"
end


def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
  a_outer_inner_id = a_outer.object_id
  b_outer_inner_id = b_outer.object_id
  c_outer_inner_id = c_outer.object_id
  d_outer_inner_id = d_outer.object_id

  puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method."
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method."
  puts "\n"

  a_outer = 22
  b_outer = "thirty three"
  c_outer = [44]
  d_outer = c_outer[0]

  puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
  puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
  puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
  puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
  puts "\n"

  a_inner = a_outer
  b_inner = b_outer
  c_inner = c_outer
  d_inner = c_inner[0]

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)."
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)."
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)."
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)."
end

fun_with_ids_2


