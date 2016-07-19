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

#Create a method that takes a name and #implements all of the changes
consonant_changer(vowel_changer(name_swapper("Felicia Torres")))
