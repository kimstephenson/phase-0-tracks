def hamster_adoption
  puts "What is your name?"
  name = gets.chomp
  puts "What is the hamster's volume (1-10)?"
  volume = gets.chomp.to_i
  puts "What is the fur color?"
  color = gets.chomp
  puts "Is it a good candidate for adoption? (y/n)"
  good_candidate = gets.chomp
    if good_candidate == "y"
    good_candidate = true
    else
    good_candidate = false
    end
  puts "What is the estimated age?"
  age = gets.chomp
    if age.length == 0
      age = nil
    else
      age = age.to_i
    end
  puts "The hamster's name is #{name}."
  puts "The hamster's volume is #{volume}."
  puts "The fur color is #{color}."
  if good_candidate == true
    puts "The hamster is a good candidate."
  else
    puts "The hamster is not a good candidate."
  end
  if age == nil
    puts "We don't know the age."
  else
    puts "The age is #{age}."
  end
end

hamster_adoption