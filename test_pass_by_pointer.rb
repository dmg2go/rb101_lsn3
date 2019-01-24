# => RB101 Programming Foundations
# => Lesson 3
# => Practice Problems
# => January 24, 2019
# => David George 
# => dmg2go@gmail.com

#test_pass_by_pointer.rb

var_init_out_of_method_def = 'string1'
var_to_pass_as_arg_one = 'string2'

puts "\n"
puts "object_id's outside method def --"
puts "main scoped object_id of var_init_out_of_method_def: #{var_init_out_of_method_def.object_id}"
puts "main scoped object_id of var_to_pass_as_arg_one: #{var_to_pass_as_arg_one.object_id}"
puts "\n"

def a_method(arg_one)
  local_meth_var = arg_one

  puts "object_id's inside a_method scope"
  #puts "method scoped object_id of var_init_out_of_method_def: #{var_init_out_of_method_def.object_id}" rescue
  #  puts "*** Exception *** - cannot reference local var defined outside of method def"

  puts "\n"
  puts "arg_one object_id: #{arg_one.object_id}"
  puts "local_meth_var object_id: #{local_meth_var.object_id}"

  return local_meth_var
end

returned_object_id = a_method(var_to_pass_as_arg_one)

puts "\n"
puts "object_id's outside method def -- AFTER method invocation -----"
puts "var_init_out_of_method_def: #{var_init_out_of_method_def.object_id}"
puts "var_to_pass_as_arg_one: #{var_to_pass_as_arg_one.object_id}"
puts "returned_object_id: #{returned_object_id.object_id}"


