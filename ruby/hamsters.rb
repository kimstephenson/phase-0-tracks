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
  age = gets.chomp.to_i

    if age == ""
      age = nil
    end
  end

hamster_adoption