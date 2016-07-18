#Define a hash to store the information

client_info = {
  name: "",
  age: "",
  children: "",
  decor_theme: "",
  email: "",
  wants_coupon: ""
}

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

#Allow user to update a key, or enter "none" to skip



#Print the hash