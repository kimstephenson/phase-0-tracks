class Santa

  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eats_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

santa1 = Santa.new
santa1.speak
santa1.eats_milk_and_cookies("oatmeal cookie")