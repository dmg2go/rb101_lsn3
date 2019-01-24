# => RB101 Programming Foundations
# => Lesson 3
# => Practice Problems
# => January 24, 2019
# => David George 
# => dmg2go@gmail.com

# => IP_validate.rb

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    return false
  else
    dot_separated_words.each do |word|
      if (0..256).include?(word.to_i)
        next
      else
        return false
      end
    end
  end
  return true
end


puts "23,345,33,2 is: #{dot_separated_ip_address?("23,345,33,2")}"

puts  "23.545.33.27 is: #{dot_separated_ip_address?("23.545.33.27")}"

puts  "23.545.33.27 is: #{dot_separated_ip_address?("23.545.33.27")}"

puts  "23.45.33.27 is: #{dot_separated_ip_address?("23.45.33.27")}"

puts  "23.45.33.27.0 is: #{dot_separated_ip_address?("23.45.33.27.0")}"

puts  "23.45.256.0 is: #{dot_separated_ip_address?("23.45.256.0")}"

puts  "23.45.257.0 is: #{dot_separated_ip_address?("23.45.257.0")}"

puts  "23.45.256.-1 is: #{dot_separated_ip_address?("23.45.256.-1")}"

# => Better yet - cleaner reading

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
    
  dot_separated_words.each do |word|
    return false unless (0..256).include?(word.to_i)
  end

  return true
end

puts "\n\n\n"
puts "23,345,33,2 is: #{dot_separated_ip_address?("23,345,33,2")}"

puts  "23.545.33.27 is: #{dot_separated_ip_address?("23.545.33.27")}"

puts  "23.545.33.27 is: #{dot_separated_ip_address?("23.545.33.27")}"

puts  "23.45.33.27 is: #{dot_separated_ip_address?("23.45.33.27")}"

puts  "23.45.33.27.0 is: #{dot_separated_ip_address?("23.45.33.27.0")}"

puts  "23.45.256.0 is: #{dot_separated_ip_address?("23.45.256.0")}"

puts  "23.45.257.0 is: #{dot_separated_ip_address?("23.45.257.0")}"

puts  "23.45.256.-1 is: #{dot_separated_ip_address?("23.45.256.-1")}"
