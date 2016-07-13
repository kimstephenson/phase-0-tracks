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

  case
  when correct_age && wants_garlicbread, correct_age && insurance
      puts "Probably not a vampire"
  when !correct_age && !wants_garlicbread && insurance, !correct_age && !insurance && wants_garlicbread
      puts "Probably a vampire"
  when !correct_age && (!wants_garlicbread && !insurance)
      puts "Almost certainly a vampire"
  when name == "Tu Fang", name == "Drake Cula"
      puts "Definitely a vampire"
  else
    puts "Results inconclusive"
  end
n += 1
end
