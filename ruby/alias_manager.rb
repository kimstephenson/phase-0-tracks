#Break up data into an array of first & last name and swap them

def name_swapper(name)
  name.split(" ").reverse.join(" ")
end

#Change all of the vowels to the next vowel in
#"aeiou"
def vowel_changer(name)
  vowel_string = "aeiou"
  name_array = name.downcase.chars
  new_name = []
  name_array.each do |character|
    if character == "u"
      character = "a"
      new_name << character
    elsif vowel_string.include? character
      character = vowel_string[vowel_string.index(character) +1]
      new_name << character
    else
      new_name << character
    end
  end
  new_name.join("").split(" ").each {|word| word.capitalize!}.join(" ")
end

#Change all of the consonants to the next consonant

def consonant_changer(name)
  consonant_string = "bcdfghjklmnpqrstvwxyz"
  name_array = name.downcase.chars
  new_name = []
  name_array.each do |character|
    if character == "z"
      character = "b"
      new_name << character
    elsif consonant_string.include? character
      character = consonant_string[consonant_string.index(character) +1]
      new_name << character
    else
      new_name << character
    end
  end
  p new_name.join("").split(" ").each {|word| word.capitalize!}.join(" ")
end

#Ask for user input, until the user decides to exit. Create a nested method call that implements all of the changes. Create 2 arrays to store user input and alias output

user_input = nil
puts "Enter the name(s) you would like to turn into an alias, or type \"quit\" to exit."
user_input_storage = []
alias_storage = []
until user_input == "quit"
  user_input = gets.chomp
  if user_input != "quit"
    user_input_storage << user_input
    alias_storage << consonant_changer(vowel_changer(name_swapper(user_input)))
  end
end

#Make the 2 arrays of user info into a hash

info_hash = Hash[user_input_storage.zip alias_storage]

#Print a statement for each key-value pair in the
#hash

info_hash.each do |key, value|
  puts "#{key} is also known as #{value}."
end



