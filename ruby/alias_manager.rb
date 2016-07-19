#Break up data into an array of first & last name and swap them

def name_swapper(name)
  name.split(" ").reverse.join(" ")
end

#Change all of the vowels to the next vowel in aeiou

#Change all of the consonants to the next consonant

#Create a method that takes a name and implements all of the changes

def alias_maker(name)
  puts name_swapper(name)
end

alias_maker("Kim Stephenson")
