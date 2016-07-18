#Define a hash to store the information

client_info = {}

#Ask user for each type of information, then convert to the right data type and store to appropriate key

puts "What is your name?"
name = gets.chomp
client_info[:name] = name
puts "What is your age?"
age = gets.chomp.to_i
client_info[:age] = age
puts "How many children do you have?"
children = gets.chomp.to_i
client_info[:children] = children
puts "What decor theme would you like?"
decor_theme = gets.chomp
client_info[:decor_theme] = decor_theme
puts "What is your email address?"
email = gets.chomp
client_info[:email] = email
puts "Would you like us to send you a coupon?"
coupon = gets.chomp
  if coupon.downcase == "yes"
    wants_coupon = true
  else
    wants_coupon = false
  end
client_info[:wants_coupon] = wants_coupon

#Print hash once user has answered questions

p client_info

#Ask user if they would like to update info, or enter "none" to skip. Print the updated hash

puts "Would you like to update any info? (enter \"none\" to skip)"
updated_key = gets.chomp.to_sym
if updated_key == :none
  p client_info
elsif updated_key == :age || updated_key == :children
  puts "Enter updated info:"
  updated_value = gets.chomp.to_i
  client_info[updated_key] = updated_value
  p client_info
elsif updated_key == :wants_coupon
  puts "Enter updated info:"
  updated_value = gets.chomp
    if updated_value.downcase == "yes"
      updated_value = true
    else
      updated_value = false
    end
  client_info[updated_key] = updated_value
  p client_info
else
  puts "Enter updated info:"
  updated_value = gets.chomp
  client_info[updated_key] = updated_value
  p client_info
end

