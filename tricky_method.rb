# => RB101 Programming Foundations
# => Lesson 3
# => Practice Problems
# => January 24, 2019
# => David George 
# => dmg2go@gmail.com

#tricky_method.rb


def tricky_method(a_string_param, an_array_param)
  puts "\n"
  puts "a_string_param.object_id: #{a_string_param.object_id}"
  puts "an_array_param.object_id: #{an_array_param.object_id}"
  puts "\n"

  an_array_param << "rutabaga"
  a_string_param += "rutabaga"
end

my_string = "pumpkins"
puts "\n"
puts "my_string.object_id: #{my_string.object_id}"
my_array = ["pumpkins"]
puts "\n"
puts "my_array.object_id: #{my_array.object_id}"

arf = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
puts "\n"
puts arf
puts "\n"
puts "\n"
puts "my_string.object_id: #{my_string.object_id}"
puts "my_array.object_id: #{my_array.object_id}"
puts "arf.object_id: #{arf.object_id}"
puts "\n"

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"


def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"


def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"




