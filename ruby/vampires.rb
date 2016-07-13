 puts "How many employees are being processed?"
 employees_processed = gets.chomp.to_i

n = 1
while n <= employees_processed

  puts "What is your name?"
    name = gets.chomp
  puts "How old are you?"
    age = gets.chomp.to_i
  puts "What year were you born?"
    birth_year = gets.chomp.to_i
    if age == 2016 - birth_year
      correct_age = true
    else
      correct_age = false
    end
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    wants_garlicbread = gets.chomp
    if wants_garlicbread == "y"
      wants_garlicbread = true
    elsif wants_garlicbread == "n"
      wants_garlicbread = false
    end
  puts "Would you like to enroll in the company's health insurance? (y/n)"
    insurance = gets.chomp
    if insurance == "y"
      insurance = true
    elsif insurance == "n"
      insurance = false
    end

  if !wants_garlicbread && !insurance
    dislikes_both = true
  end

  allergies = nil
  puts "Name any allergies. Type \"done\" when finished"
  until allergies == "sunshine" || allergies == "done"
    allergies = gets.chomp
  end
  if allergies == "sunshine"
    puts "Probably a vampire"
  end

  if allergies != "sunshine"
    if correct_age && !dislikes_both
        puts "Probably not a vampire"
    elsif !correct_age && !dislikes_both
        puts "Probably a vampire"
    elsif !correct_age && dislikes_both
        puts "Almost certainly a vampire"
    elsif name == "Tu Fang"|| name == "Drake Cula"
        puts "Definitely a vampire"
    else
      puts "Results inconclusive"
    end
  end

n += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
